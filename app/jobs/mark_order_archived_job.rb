class MarkOrderArchivedJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    logger.info("perform_later")
    Order.update_all status: 'ARCHIVED'
  end
end
