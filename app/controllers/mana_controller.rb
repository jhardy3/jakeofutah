require 'twitter'


class ManaController < ApplicationController
  def index
    render Twitter.user_timeline("jakeofutah")
  end
end
