# frozen_string_literal: true

class ListScreen
  def client_to_check
    find_element(id: 'nomeLista').text
  end

  def tap_on_user(user)
    find_element(id: 'nomeLista', text: user).click
  end

  def user_on_list
    find_element(id: 'nomeLista', text: user)
  end
end
