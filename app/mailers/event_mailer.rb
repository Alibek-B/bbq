class EventMailer < ApplicationMailer
  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    mail to: event.user.email
  end

  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email
  end

  def photo(event, photo, email)
    @photo = photo
    @event = event

    mail to: email
  end
end
