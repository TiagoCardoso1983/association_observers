# -*- encoding : utf-8 -*-
module AssociationObservers
  module Workers
    class ManyDelayedNotification

      attr_reader :observer_ids, :klass, :proxy_method_name

      def initialize(observer_ids, klass, proxy_method_name)
        @observer_ids = observer_ids
        @klass = klass.name
        @proxy_method_name = proxy_method_name
      end

      def perform
        observers = AssociationObservers::orm_adapter.find_all(@klass.constantize, :id => @observer_ids)
        observers.each(&AssociationObservers::queue.send(@proxy_method_name))
        # after we are down, we are going to delete the proxy method name
        Queue.send :undef_method, @proxy_method_name
      end

    end
  end

end