require_relative 'bayesab/version'
require 'distribution'

module Bayesab
  # Calculates the likelyhood that control is an improvement on experiment.
  #
  # Parameters:
  #   control_success: Number of successes for the control group.
  #   control_fail: Number of failures for the control group.
  #   experiment_success: Number of successes for the experiment group.
  #   experiment_fail: Number of failures for the experiment group.
  def self.probability(control_success, control_fail, experiment_success, experiment_fail)
    alpha_a = control_success + 1
    beta_a = control_fail + 1
    alpha_b = experiment_success + 1
    beta_b = experiment_fail + 1

    total = 0.0
    0.upto(alpha_b - 1) do |i|
      total += Math.exp(Math.lbeta(alpha_a + i, beta_b + beta_a)[0] - Math.log(beta_b + i) -
      Math.lbeta(1 + i, beta_b)[0] - Math.lbeta(alpha_a, beta_a)[0])
    end

    total
  end
end
