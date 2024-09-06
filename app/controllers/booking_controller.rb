class BookingController < ApplicationController
    def index
        @userName = current_user;
    end

    def ticket
        @states = State.all;
    end

    def filter_dist
        state = State.find_by(short_name: params[:short_name])
        if state
          districts = state.districts.map(&:district_name)
          render json: { dist: districts }
        else
          render json: { dist: [] }
        end
    end

    def filter_site
      district = District.find_by(district_name: params[:district_name])
      if district
        sites = district.heritage_models
        render json: {site: sites}
      else
        render json: {site: []}
      end
    end

    def way
    end

    def hotels
      @states = State.all
      logger.debug "States: #{@states.inspect}"  # Check logs for output
    end

    def resturants
      @states = State.all;
    end

    def todo
    end
end
