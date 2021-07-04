(defsystem "web-todo-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Lictor Guzman"
  :license ""
  :depends-on ("web-todo"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "web-todo"))))
  :description "Test system for web-todo"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
