class MyClass
	@@x = " x"
	$aba
	$ask
	def initialize(s)
		@mystr = s
		hello = ""
	end
	def getBinding
		return binding()
	end
end

class MyOtherClass 
	@@x = " y"
	def initialize(s)
		ab = ""
		@mystr = s
	end
	
	#Method Name : getBinding()
	#return string
	def getBinding
		return binding()
	end
end


			 
