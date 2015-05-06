# PID自動控制器自走車模擬器

製作一個PID控制器，

利用8051來實現它讓自走車可以追隨地上的黑線，

修正輪子的轉速，使車子的中心一直維持在黑線裡，

可是由於當出8051程式還未建構，

建構後的PID的P，I，D三個參數，可能要用 try的方式去得到，

因此寫了一個小程式，將實際的車子以10:1的方式縮小到程式內，

感測器和感測器的間隔也是以 10:1的方式縮小，

馬達的轉速轉成線速度後一樣是10:1

地上黑線的寬度也是10:1，都對應到程式裡的尺寸，

只是並沒有把馬達的延遲套特性考慮上去，

而此部份希望利用PID控制器的特性去解決他，

當然還有很多因素沒模擬，只是簡單的考慮一些基本的因素，

希望利用此程式可以得到一個大概的PID的參數值

得到後的結果還不錯

車子自己會去追隨地上的黑線~

之後轉成8051的程式之後 自走車的行走 和預估的結果相差不遠 , 實體車可以自動修正路線 貼著黑線行走,

雖然此模擬沒有模擬彎道 , 可是實體車子 在行進彎道時一樣可以自動修正行進的路線 , 只是他修正行進時

要跟據實際的情形 , 如果要加快修正速度時要加上 P 值 , 可是P時太大時又會修正過頭 , 此時要根據 D 值

去增加他的預測功能 , 就是類似學習功能 , 要增加穩定性要加大 I 值 , PID的值根據VB的模擬得到的值去TRY

的話就不會瞎子摸像,至少大約3個值的比例也有抓出來 , 實際的值也差不了多少

<img src="http://ten01.net/wp-content/uploads/2013/04/1333478213-29954328241.jpg" />

#Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


#License

Copyright (C) 2006 by Honor Lin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



