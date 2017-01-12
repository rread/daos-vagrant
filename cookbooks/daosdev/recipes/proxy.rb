proxy = nil

if node['proxy']['http_proxy']
    ENV['http_proxy'] = node['proxy']['http_proxy']
    proxy = node['proxy']['http_proxy']
end

if node['proxy']['https_proxy']
    ENV['https_proxy'] = node['proxy']['https_proxy']
    proxy = node['proxy']['https_proxy']
end


if proxy
    node.default['yum']['main']['proxy'] = proxy

    file '/etc/profile.d/proxy.sh' do
        content <<-EOH
export http_proxy=#{node['proxy']['http_proxy']}
export https_proxy=#{node['proxy']['https_proxy']}
export HTTP_PROXY=#{node['proxy']['http_proxy']}
export HTTPS_PROXY=#{node['proxy']['https_proxy']}
export no_proxy=#{node['proxy']['no_proxy']}
EOH
        owner "root"
        group "root"
        mode 0644
    end
else
    file '/etc/profile.d/proxy.sh' do
        action :delete
    end
end
