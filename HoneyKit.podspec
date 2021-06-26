# coding: utf-8
Pod::Spec.new do |s|
    s.name = "HoneyKit"
    s.version = "1.0.1"
    s.summary = "HoneyKit is extensions for solve common tasks in iOS development"
    s.authors = { 'Aleksey Pleshkov' => 'im@alekseypleshkov.ru', 'Vladimir Pchelyakov' => 'v.pchelyakov@yandex.ru' }
    s.homepage = "https://github.com/sqrline"
    s.license= 'MIT'
    s.source = { :git => 'https://github.com/sqrline/HoneyKit.git', :branch => "master", :tag => s.version.to_s }
    s.platform = :ios, '11.0'
    s.source_files = 'HoneyKit/*.{h,m,swift}'
    s.requires_arc = true
    s.frameworks = 'UIKit'
    s.swift_version= "5.1"
end
