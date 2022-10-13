class AccountsController < ApplicationController
  before_action :set_account, only: [:edit, :update]

  # Show all accounts
  def index
    @accounts = Account.all
  end

  # Show new account form
  def new
    @account = Account.new
  end

  # Create new account in DB
  def create
    @account = Account.new
    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :new
    end
  end

  # Show edit form
  def edit
  end

  # Update account in DB
  def update
    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end

  private

  def account_params
    params.require(:account).permit(:email, :full_name)
  end

  def set_account
    @account = Account.find(params[:id])
  end
end
