languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, info|
    info.each do |language, type|
      if new_hash[language] == nil
        style_array = []
        style_array << style
        new_hash[language] = {type:type.values.join, style:style_array}
      else
        style_array = new_hash[language][:style]
        style_array << style
        new_hash[language] = {type:type.values.join, style:style_array}
      end
    end
  end
  return new_hash
end

###############################################################################
#####Earlier version that doesn't work with languages with multiple styles#####
###############################################################################

#def reformat_languages(languages)
#  new_hash = {}

#  languages.each do |style, info|
#    info.each do |language, type|
#      style_array = []
#      style_array << style
#      new_hash[language] = {type:type.values.join, style:style_array}
#    end
#  end
#  return new_hash
#end
