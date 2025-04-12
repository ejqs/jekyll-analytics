class CounterDotDev
    def initialize(config)
        if config['tracking_script'].nil?
            raise ArgumentError, 'Please use your counter.dev "user"'
        end
        @tracking_script = config['tracking_script']
    end

    def render()
        str = """
    <!-- Counter.dev Analytics -->
    #{@tracking_script}
    <!-- End Counter.dev Analytics  -->
"""
        return str
    end
end
