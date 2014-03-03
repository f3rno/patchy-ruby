require "yaml"

module Patchy
  class Architecture

    @@instructions = YAML.load_file("lib/arch/instructions.yaml")

    def instructions
      @@instructions
    end

    def instructions_s
      out = "Instructions:\n\n"

      out << @@instructions.map do |i|
        "    #{i[:mnemonic].ljust(6)} #{i[:name].ljust(32)} #{i[:desc]}"
      end.join("\n")
    end

  end
end
