require 'page-object'

class Values
  include PageObject

  text_field(:value1_text, :id => 'txt_val_1')
  text_field(:value2_text, :id => 'txt_val_2')
  text_field(:value3_text, :id => 'txt_val_3')
  text_field(:value4_text, :id => 'txt_val_4')
  text_field(:value5_text, :id => 'txt_val_5')
  text_field(:total_balance_text, :id => 'txt_ttl_val')

  paragraph(:value1_label, :id => 'lbl_val_1')
  paragraph(:value2_label, :id => 'lbl_val_2')
  paragraph(:value3_label, :id => 'lbl_val_3')
  paragraph(:value4_label, :id => 'lbl_val_4')
  paragraph(:value5_label, :id => 'lbl_val_5')
  paragraph(:total_balance, :id => 'lbl_ttl_val')

  page_url 'https://www.exercise1.com/values'

  def navigateToPage()
    @browser.navigate.to "https://www.exercise1.com/values"
  end

  def verifyValuesGreaterThan0()
    value1_int = self.value1_text.delete( "$" ).to_f
    value1_int.should > 0

    value2_int = self.value2_text.delete( "$" ).to_f
    value2_int.should > 0

    value3_int = self.value3_text.delete( "$" ).to_f
    value3_int.should > 0

    value4_int = self.value4_text.delete( "$" ).to_f
    value4_int.should > 0

    value5_int = self.value5_text.delete( "$" ).to_f
    value5_int.should > 0
  end

  def valuesAsCurrencies(char)
    self.value1_text.include? char
    self.value2_text.include? char
    self.value3_text.include? char
    self.value4_text.include? char
    self.value5_text.include? char
  end

  def getSumOfValues()
    sum = self.value1_text.to_f + self.value2_text.to_f + self.value3_text.to_f + self.value4_text.to_f + self.value5_text.to_f
    return sum
  end

  def checkTotalBalanceAndSum()
    self.total_balance_text.delete( "$" ).should == getSumOfValues.to_s
  end

  def matchTotalBalanceSum(sum)
    return getSumOfValues == sum
  end

  def countOfValuesLenght()
    listOfValues = [self.value1_text, self.value2_text, self.value3_text, self.value4_text, self.value5_text, self.total_balance_text]
    return listOfValues.length
  end

  def valueCountIs(int)
    return countOfValuesLenght == int
  end

end