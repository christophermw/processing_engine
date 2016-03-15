require 'rails_helper'

describe Trigger do
  it 'should default the delay_amount to 0' do
    trigger = create(:trigger)
    expect(trigger.delay_amount).to be 0
  end

  it 'should default delay to 0 minutes' do
    trigger = create(:trigger)
    expect(trigger.delay).to eq 0.minutes
  end

  it 'should default delay_unit to minutes' do
    trigger = create(:trigger)
    expect(trigger.delay_unit).to eq 'minutes'
  end

  it 'should return a delay of 5 minutes' do
    trigger = create(:trigger_with_5_minute_delay)
    expect(trigger.delay).to eq 5.minutes
  end

  it 'should return a delay of 5 hours' do
    trigger = create(:trigger_with_5_hour_delay)
    expect(trigger.delay).to eq 5.hours
  end

  it 'should return a delay of 5 days' do
    trigger = create(:trigger_with_5_day_delay)
    expect(trigger.delay).to eq 5.days
  end

  it 'should process the trigger'

  it 'should evaluate conditions'
end