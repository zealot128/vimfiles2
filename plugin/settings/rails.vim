" let g:rails_abbreviations=0
" let g:rails_no_abbreviations=1


let g:rails_projections = {
\ "config/projections.json": {
\   "command": "projections"
\ },
\ "app/services/*.rb": {
\   "command": "service",
\   "affinity": "model",
\   "test": "spec/services/%s_spec.rb",
\   "related": "app/models/%s.rb",
\   "template": "class %S\n\n  def run\n  end\nend"
\ },
\ "app/serializers/*_serializer.rb": {
\   "command": "serializer",
\   "affinity": "model",
\   "test": "spec/serializers/%s_spec.rb",
\   "related": "app/models/%s.rb",
\   "template": "class %S < ActiveModel::Serializer\n\n  embed ids:, include: true\n\n  attribute :id\nend"
\ },
\ "app/admin/*.rb": {
\   "command": "admin",
\   "affinity": "model",
\   "related": "app/models/%s.rb",
\   "template":
\   "ActiveAdmin.register %S do\n\n  # form do |f|\n   # f.inputs do\n   # end\n   # f.actions\n  # end\n\n  #menu parent: '', label: ''\n\n  # index do\n  #default_actions\n  # end\n\nend\n"
\ },
\ "config/*.rb": { "command": "config"  },
\ "spec/support/*.rb": {"command": "support"},
\ "spec/features/*_spec.rb": {
\   "command": "feature",
\   "template": "require 'spec_helper'\n\nfeature '%h' do\n\nend",
\ }}

let g:rails_gem_projections = {
\ "cells": {
  \ "app/cells/*_cell.rb": {
  \   "command": "cell",
  \   "related": "app/cells/%s/%d*",
  \   "template":
  \   "ActiveAdmin.register %S do\n\n  # form do\n  # end\n\n  #menu parent: '', label: ''\n\n  # index do\n  # end\n\nend\n"
  \ }
\ },
\ "cancan": {
\   "app/models/*ability.rb": {
\   "command": "ability",
\   "keywords": "can cannot"
\   },
\   "app/models/ability.rb": {
\   "command": "ability",
\   }
\ },
\ "simple-navigation": {
\   "config/*navigation.rb": {
\   "command": "navigation",
\   "keywords": "item primary navigation"
\   },
\   "config/navigation.rb": {
\   "command": "navigation",
\   }
\ },
\ "carrierwave": {
\   "app/uploaders/*_uploader.rb": {
\   "command": "uploader",
\   "template":
\   "class %SUploader < CarrierWave::Uploader::Base\nend"
\   }
\ },
\ "resque": {
\   "app/workers/*_job.rb": {
\   "command": "worker",
\   "template": "class %SJob\n\n  \n@queue = :main\ndef self.perform\n  end\nend"
\   }
\ },
\ "draper": {
\   "app/decorators/*_decorator.rb": {
\   "command": "decorator",
\   "affinity": "model",
\   "test": "spec/decorators/%s_spec.rb",
\   "related": "app/models/%s.rb",
\   "template": "class %SDecorator < Draper::Decorator\nend"
\   }
\  }
\ }


au BufRead,BufNewFile *.rabl syn keyword rubyRabl node attribute object child collection attributes glue extends
au BufRead,BufNewFile *.rabl hi def link rubyRabl Function
