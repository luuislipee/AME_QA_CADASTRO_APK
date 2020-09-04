# frozen_string_literal: true

class AlertScreen
  def notification_text
    find_element(id: 'android:id/message').text
  end

  def click_ok
    find_element(xpath: '//android.widget.Button[@text="OK"]').click
  end

  def confirm_deletion
    find_element(xpath: '//android.widget.Button[@text="SIM"]').click
  end
end
