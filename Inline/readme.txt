An inline function is, inserted inline into function call site. 

This will avoid invocation of function call and return address storing mechanisum hence it will looks like we are reducing load on CPU registers operations. 
But on otherhand it will increade code size and space inside instruction cache. 

Hence where time-critical ness is to be take care there we can use inline functions but we have to avoid making large function inline which are not time-critical and called many times.

Each compiler has there own method to tacle inline functions

Here in normal_func.s and inline_func.s we generated them using GCC toolchain, The GCC inline functions are getting optiized hence when we are calling add function there it doesn't get where its 
defination is located, so we get an error at linking time. In order to make it work we need to make the function as static inline add function, buts its assembly code will be sane as of regular
add fuction.

We had generated inline_func.asm and normal_func.asm using cl compiler, here only difference between them looks like such as declaration of function which is marked as inline is not present there.
