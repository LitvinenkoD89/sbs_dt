class SmsWorker
  include Sidekiq::Worker

  def perform(order_id)
    @order = Order.find order_id
    SmsRu.sms.send(api_id: '14DAA4AA-4E28-8218-B6E9-26D5971078D3', to: '79515284082', text: "#{@order.name} #{@order.phone}")
   end
end 