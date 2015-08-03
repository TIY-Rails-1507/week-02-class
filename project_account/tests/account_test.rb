require 'minitest/autorun'

require_relative '../lib/account'

class TestAccount < MiniTest::Unit::TestCase
  
  def setup
    @account = Account.new(100)
  end

  def teardown
    
  end

  def test_account_is_created_with_an_opening_balance
    opening_balance = 50
    account = Account.new(opening_balance)
    assert_equal(opening_balance, account.balance())
  end

  def test_withdrawing_reduces_the_balance   
    
    @account.withdraw(30)
    assert_equal(70, @account.balance())
  end

  def test_depositing_increases_the_balance
    
    @account.deposit(30)
    assert_equal(130, @account.balance())
  end
  
end