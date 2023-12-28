local M = {
    cmd = {
        "grammarly-languageserver", "--stdio"
    },
    filetypes = {"markdown"},
    files = {
        include = { "**/readme.md","**/README.md","**/*.txt","**/*.md" }
    },
}

return M


-- grammarly.config.documentDialect                                                  default: "auto-text"
-- grammarly.config.documentDomain                                                   default: "general"
-- grammarly.config.suggestionCategories.conjugationAtStartOfSentence                default: "off"
-- grammarly.config.suggestionCategories.fluency                                     default: "on"
-- grammarly.config.suggestionCategories.informalPronounsAcademic                    default: "off"
-- grammarly.config.suggestionCategories.missingSpaces                               default: "on"
-- grammarly.config.suggestionCategories.nounStrings                                 default: "on"
-- grammarly.config.suggestionCategories.numbersBeginningSentences                   default: "on"
-- grammarly.config.suggestionCategories.numbersZeroThroughTen                       default: "on"
-- grammarly.config.suggestionCategories.oxfordComma                                 default: "off"
-- grammarly.config.suggestionCategories.passiveVoice                                default: "off"
-- grammarly.config.suggestionCategories.personFirstLanguage                         default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageAgeRelated            default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageDisabilityRelated     default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageFamilyRelated         default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageGenderRelated         default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageHumanRights           default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageHumanRightsRelated    default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageLGBTQIARelated        default: "on"
-- grammarly.config.suggestionCategories.possiblyBiasedLanguageRaceEthnicityRelated  default: "on"
-- grammarly.config.suggestionCategories.possiblyPoliticallyIncorrectLanguage        default: "on"
-- grammarly.config.suggestionCategories.prepositionAtTheEndOfSentence               default: "off"
-- grammarly.config.suggestionCategories.punctuationWithQuotation                    default: "on"
-- grammarly.config.suggestionCategories.readabilityFillerWords                      default: "on"
-- grammarly.config.suggestionCategories.readabilityTransforms                       default: "on"
-- grammarly.config.suggestionCategories.sentenceVariety                             default: "on"
-- grammarly.config.suggestionCategories.spacesSurroundingSlash                      default: "on"
-- grammarly.config.suggestionCategories.splitInfinitive                             default: "on"
-- grammarly.config.suggestionCategories.stylisticFragments                          default: "off"
-- grammarly.config.suggestionCategories.unnecessaryEllipses                         default: "off"
-- grammarly.config.suggestionCategories.variety                                     default: "on"
-- grammarly.config.suggestionCategories.vocabulary                                  default: "on"
-- grammarly.config.suggestions.ConjunctionAtStartOfSentence                        
-- grammarly.config.suggestions.Fluency                                             
-- grammarly.config.suggestions.InformalPronounsAcademic                            
-- grammarly.config.suggestions.MissingSpaces                                       
-- grammarly.config.suggestions.NounStrings                                         
-- grammarly.config.suggestions.NumbersBeginningSentences                           
-- grammarly.config.suggestions.NumbersZeroThroughTen                               
-- grammarly.config.suggestions.OxfordComma                                         
-- grammarly.config.suggestions.PassiveVoice                                        
-- grammarly.config.suggestions.PersonFirstLanguage                                 
-- grammarly.config.suggestions.PossiblyBiasedLanguageAgeRelated                    
-- grammarly.config.suggestions.PossiblyBiasedLanguageDisabilityRelated             
-- grammarly.config.suggestions.PossiblyBiasedLanguageFamilyRelated                 
-- grammarly.config.suggestions.PossiblyBiasedLanguageGenderRelated                 
-- grammarly.config.suggestions.PossiblyBiasedLanguageHumanRights                   
-- grammarly.config.suggestions.PossiblyBiasedLanguageHumanRightsRelated            
-- grammarly.config.suggestions.PossiblyBiasedLanguageLgbtqiaRelated                
-- grammarly.config.suggestions.PossiblyBiasedLanguageRaceEthnicityRelated          
-- grammarly.config.suggestions.PossiblyPoliticallyIncorrectLanguage                
-- grammarly.config.suggestions.PrepositionAtTheEndOfSentence                       
-- grammarly.config.suggestions.PunctuationWithQuotation                            
-- grammarly.config.suggestions.ReadabilityFillerwords                              
-- grammarly.config.suggestions.ReadabilityTransforms                               
-- grammarly.config.suggestions.SentenceVariety                                     
-- grammarly.config.suggestions.SpacesSurroundingSlash                              
-- grammarly.config.suggestions.SplitInfinitive                                     
-- grammarly.config.suggestions.StylisticFragments                                  
-- grammarly.config.suggestions.UnnecessaryEllipses                                 
-- grammarly.config.suggestions.Variety                                             
-- grammarly.config.suggestions.Vocabulary                                          
-- grammarly.files.exclude                                                           default: []
-- grammarly.files.include                                                           default: ["**\/readme.md","**\/README.md","**\/*.txt"]
-- grammarly.patterns                                                                default: ["**\/readme.md","**\/README.md","**\/*.txt"]
-- grammarly.selectors                                                               default: []
-- grammarly.startTextCheckInPausedState                                             default: false
