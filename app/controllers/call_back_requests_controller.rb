class CallBackRequestsController < ApplicationController
  def create
    # processing request
    succeeded = [true, false].sample

    if succeeded
      render js: "alert('Thank you! We will call you soon!')"
    else
      render js: "alert('Sorry! Something went wrong.')", status: :internal_server_error
    end
  end
end
