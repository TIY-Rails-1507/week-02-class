require 'minitest/autorun'

require_relative 'test_helper'

class TestBank < MiniTest::Unit::TestCase
    
  def test_transfer_from_an_account_to_another
    current_account = Account.new(100)
    savings_account = Account.new(500)
    
    # logic to tranfer money between accounts
    amount_to_trasfer = 20
    bank = Bank.new
    bank.transfer(current_account, savings_account, amount_to_trasfer)
    # end of logic to transfer money

    assert_equal(80, current_account.balance())
    assert_equal(520, savings_account.balance())   
  end

end