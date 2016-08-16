require 'minitest/autorun'
require "minitest/reporters" # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() # optional

require_relative 'bank'

class BankTest < MiniTest::Test

  def setup
    @account = Bank::Account.new({})
  end

  def test_can_open_new_account
#    skip
    assert_equal @account.class, Bank::Account
  end

  def test_new_account_has_balance_of_zero
    assert_equal 0, @account.balance
  end

  def test_balance_increases_by_deposit
    old_balance = @account.balance
    @account.deposit(50)
    new_balance = @account.balance
    assert_equal old_balance + 50, @account.balance
  end

  def test_new_account_can_have_name
    account = Bank::Account.new(name: 'iterm8s')
    assert_equal 'iterm8s', account.name
    assert_equal 0, account.balance
  end

  def test_can_open_an_account_with_balance_of_100
    options = { balance: 100, name: '' }
    account = Bank::Account.new(options)
    assert_equal 100, account.balance
  end

  def test_can_withdraw_amount_from_account_and_return_balance
    account = Bank::Account.new(balance: 2)
    assert_equal 0, account.withdraw(2)
  end

  def test_cannot_overdraw
    assert_equal false, @account.withdraw(2)
  end

end
