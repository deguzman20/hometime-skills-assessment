require 'json'

class ReservationController < ApplicationController
  def index; end

  def process_reservation
    @message = nil
    @reservation_params = params[:reservation]
    if @reservation_params.present?
      @guest = Guest.new(
        first_name: @reservation_params[:guest_first_name],
        last_name: @reservation_params[:guest_last_name],
        email: @reservation_params[:guest_email]
      )

      if @guest.save
        @reservation_params[:guest_phone_numbers].each do |gpn|
          GuestPhoneNumber.create(number: gpn)
        end

        @guest_details_params = @reservation_params[:guest_details]

        @guest_detail = GuestDetail.new(
          localized_description: @guest_details_params[:localized_description],
          number_of_adults: @guest_details_params[:number_of_adults],
          number_of_children: @guest_details_params[:number_of_children],
          number_of_infants: @guest_details_params[:number_of_infants]
        )

        if @guest_detail.save
          @reservation = Reservation.new(
            start_date: @reservation_params[:start_date],
            end_date: @reservation_params[:end_date],
            expected_payout_amount: @reservation_params[:expected_payout_amount],
            listing_security_price_accurate: @reservation_params[:listing_security_price_accurate],
            host_currency: @reservation_params[:host_currency],
            total_paid_amount_accurate: @reservation_params[:total_paid_amount_accurate],
            nights: @reservation_params[:nights],
            status_type: @reservation_params[:status],
            guest_id: @guest.id,
            guest_detail_id: @guest_detail.id
          )

          if @reservation.save
            @message = 'Process successfuly'
          else
            @message = @reservation.errors.full_message
          end
        else
          @message = @guest_detail.errors.full_message
        end

      else
        @message = @guest.errors.full_message
      end
    else
      @guest_params = params[:guest]

      @guest = Guest.new(
        first_name: @guest_params[:first_name],
        last_name: @guest_params[:last_name],
        email: @guest_params[:email]
      )

      if @guest.save
        @guest.guest_phone_numbers.create(number: @guest_params[:phone])
        @guest_detail = GuestDetail.new(
          number_of_adults: params[:adults],
          number_of_children: params[:children],
          number_of_infants: params[:infants]
        )

        if @guest_detail.save
          @reservation = Reservation.new(
            start_date: params[:start_date],
            end_date: params[:end_date],
            expected_payout_amount: params[:payout_price],
            listing_security_price_accurate: params[:security_price],
            host_currency: params[:currency],
            total_paid_amount_accurate: params[:total_price],
            nights: params[:nights],
            status_type: params[:status],
            guest_id: @guest.id,
            guest_detail_id: @guest_detail.id
          )

          if @reservation.save
            @message = 'Process successfuly'
          else
            @message = @reservation.errors.full_message
          end
        else
          @message = @guest_detail.errors.full_message
        end
      else
        @message = @guest.errors.full_message
      end
    end

    render json: @message.to_json
  end
end
