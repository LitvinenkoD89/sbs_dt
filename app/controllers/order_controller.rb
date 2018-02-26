class OrderController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def create
    @order = Order.new(order_params)
    @order.date_create = Time.now.to_i
    setting = Setting.find_by_name 'sms_notification'

    respond_to do |format|
      if @order.save
        # SmsWorker.perform_async(@order.id) if setting.status == 1
        SmsRu.sms.send(api_id: '14DAA4AA-4E28-8218-B6E9-26D5971078D3', to: '79515284082', text: "#{@order.name} #{@order.phone}") if setting.status == 1
        format.html { redirect_back, success: 'Заявка принята' }
      else
        format.html { redirect_back, danger: 'Вы забыли указать номер телефона' }
      end
    end
  end

  private
    def order_params
      params.permit(:name, :phone, :agent)
    end
end
