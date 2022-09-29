# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  parts1 = (ver1.split '.').map(&:to_i)
  parts2 = (ver2.split '.').map(&:to_i)

  spaceship = parts1[0] <=> parts2[0]
  return spaceship if spaceship.nonzero?

  parts1[1] <=> parts2[1]
end
# END
