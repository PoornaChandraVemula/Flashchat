

# Flash-Chat

## Podfile Configuration
```
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
```



Flash Chat is an internet based messaging app similar to WhatsApp, the popular messaging app that was bought by Facebook for $22 billion. We will be using a service called Firebase as a backend data server to store and retrieve our messages from the cloud. 






