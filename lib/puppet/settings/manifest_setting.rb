class Puppet::Settings::ManifestDefault < Puppet::Settings::BaseSetting
  def pre_interpolation_validation(value)
    if value =~ /\$environment/
      raise Puppet::Settings::InterpolationError, "Cannot interpolate $environment"
    end
    value
  end
end
