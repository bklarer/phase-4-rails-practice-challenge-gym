class MembershipsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    

    def create
        membership = Membership.create!(membership_params)
        render json: membership, status: :created
    end


    private
    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

    def membership_params
        params.permit(:charge, :client_id, :gym_id)
    end

end
