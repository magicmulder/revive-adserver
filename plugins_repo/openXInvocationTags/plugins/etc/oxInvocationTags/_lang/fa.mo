��    :      �  O   �      �  f  �  �   `     	  ]   "
  �   �
  �   /      m  1  �   �  	   a     k  8   y     �     �     �     �     	            
   $     /  	   M  -   W     �     �  	   �  "   �     �     �     �     �                    %     ,     @     M     _     e  	   w  !   �     �     �     �     �     �     �     �     �  !   �          /     B     Q     ]  
   e  �  p  �    �   �    l  �          y    ^  �   �  �!  +  �#     �$     �$  H   �$  ,   >%  <   k%     �%     �%     �%     �%     �%     �%  -   &     E&  T   L&     �&     �&     �&  3   �&     '     )'     .'     I'  
   \'     g'     �'  
   �'  '   �'     �'     �'     �'     (     $(  .   ;(     j(     s(     �(  %   �(     �(     �(     �(     �(  #   �(     )     3)     G)     _)  
   r)     })            !            :   3      
   .      /   +         6              8   &       '      *                      	           5       1          #   %      (             $      7       )   ,             9          -       4             0                    "         2                  
  * As the PHP script below tries to set cookies, it must be called
  * before any output is sent to the user's browser. Once the script
  * has finished running, the HTML code needed to display the ad is
  * stored in the $adArray array (so that multiple ads can be obtained
  * by using mulitple tags). Once all ads have been obtained, and all
  * cookies set, then you can send output to the user's browser, and
  * print out the contents of $adArray where appropriate.
  *
  * Example code for printing from $adArray is at the end of the tag -
  * you will need to remove this before using the tag in production.
  * Remember to ensure that the PEAR::XML-RPC package is installed
  * and available to this script, and to copy over the
  * lib/xmlrpc/php/openads-xmlrpc.inc.php library file. You may need to
  * alter the 'include_path' value immediately below.
  */ 
  * Don't forget to replace the '{clickurl}' text with
  * the click tracking URL if this ad is to be delivered through a 3rd
  * party (non-Max) adserver.
  * 
  * If iFrames are not supported by the viewer's browser, then this
  * tag only shows image banners. There is no width or height in these
  * banners, so if you want these tags to allocate space for the ad
  * before it shows, you will need to add this information to the <img>
  * tag. 
  * Replace all instances of {random} with
  * a generated random number (or timestamp).
  * 
  * This tag has been generated for use on a non-SSL page. If this tag
  * is to be placed on an SSL page, change the
  *   'http://%s/...'
  * to
  *   'https://%s/...'
  * 
  * This tag only shows image banners. There is no width or height in
  * these banners, so if you want these tags to allocate space for the
  * ad before it shows, you will need to add this information to the
  * <img> tag. 
  *------------------------------------------------------------*
  * This interstitial invocation code requires the images from:
  * /www/images/layerstyles/%s/...
  * To be accessible via: http(s)://%s/layerstyles/%s/...
  *------------------------------------------------------------* 
  -- Don't forget to replace the 'Insert_Clicktrack_URL_Here' text with
  -- the click tracking URL if this ad is to be delivered through a 3rd
  -- party (non-Max) adserver.
  --
  -- Don't forget to replace the 'Insert_Random_Number_Here' text with
  -- a cache-buster random number each time you deliver the tag through
  -- a 3rd party (non-Max) adserver.
  -- 
  -- This tag has been generated for use on a non-SSL page. If this tag
  -- is to be placed on an SSL page, change all instances of
  --   'http://%s/...'
  -- to
  --   'https://%s/...'
  -- Alignment Always active Assign the $phpAds_raw['html'] variable to your template Automatically close after Automatically collapse after Background color Banner padding Border color Bottom Center Close text Delay before banner is hidden Direction Hide the banner when the cursor is not moving Horizontal alignment Horizontal shift Image Tag Interstitial or Floating DHTML Tag Javascript Tag Left Left margin Left to right Limited Local Mode Tag Looping Middle No Cookie Image Tag Option - SSL Option - noscript Pause Placement Comment Popup Tag Publisher code - Single Page Call Right Right margin Right to left Show close button Smooth movement Speed Style Top Transparancy of the hidden banner Transparent background Vertical alignment Vertical shift XML-RPC Tag [Close] iFrame Tag Project-Id-Version: revive-adserver
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2008-09-25 09:12+0100
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-SourceCharset: utf-8
X-Poedit-KeywordsList: translate
Last-Translator: mbeccati <matteo@beccati.com>
Language-Team: Persian
Language: fa_IR
X-Generator: crowdin.com
X-Poedit-SearchPath-0: plugins_repo/openXInvocationTags/extensions/invocationTags/oxInvocationTags/
X-Crowdin-Project: revive-adserver
X-Crowdin-Language: fa
X-Crowdin-File: /plugins_repo/openXInvocationTags/plugins/etc/oxInvocationTags/_lang/po/en.po
 
 * همان گونه که script PHP زیر تلاش می کند که کوکی ها را وارد کند، باید قبل از اینکه خروجی ای 
* به مرورگر کاربر فرستاده شود ، فراخوانی شود . هنگامی که اجرای script تمام شود، به کد HTML نیاز است تا تبلیغ 
* ذخیره شده در آرایه ی  $adArray (پس می تواند شامل تبلیغات چند گانه با استفاده از برچسب های چندگانه باشد )نشان داده شود.
* وقتی که تمام تبلیغات در بر گرفته شدند ، و تمامی کوکی ها تنظیم شدند
* ، آنگاه شما می توانید خروجی را به مرورگر کاربر بفرستید ، و 
* تمام محتویات   $adArray را در جایی که مناسب است پرینت کنید . 
*
* کد نمونه برای پرینت کردن از  $adArray در انتهای بر چسب است -
* شما باید این برچسب را قبل از استفاده از تگ پاک کنید 
* به یاد داشته باشید که از وجود پکیج(بسته) PEAR::XML-RPC اطمینان پیدا کنید 
.  
* و برای اسکریپت معرفی کنید ، و کل کتابخانه lib/xmlrpc/php/openads-xmlrpc.inc.php 
* را کپی کنید .  شاید نیاز بشود که 
* ارزش  'include_path' را سریعا کاهش دهید . 
  */ 
* فراموش نشود که متن '{clickurl}' با 
* کلیک ردیابی URL، اگر این تبلیغ یک سرور تبلیغاتی 3rd-party 
* باشد ، جایگزین کنید .
* 
* اگر iFrames توسط مرورگر بازدید کنندگان پشتیبانی نشد ، پس این 
* برچسب فقط تبلیغات تصویری را نشان می دهد . هیچ عرض یا پهنایی در این تبلیغات وجود ندارد 
*پس ، اگر می خواهید که برای این برچسب فضایی اختصاص داده شود برای تبلیغات 
* قبل از این که نمایش داده شود ، شما باید این اطلاعات به 
* برچسب اضافه کنید .  
* تمام نمونه های {random} را با 
* یک عدد تصادفی (یا یک زمان تصادفی) جایگذاری کنید 
* 
* این برچسب برای استفاده از صفحه های بدون SSL تولید شده است . اگر این برچسب 
*باید در SSL جایگذاری شود، 
* 'http://%s/...' 
* را به 
*  'https://%s/...'
* تغییر دهید . 
* 
* این برچسب فقط تبلیغات تصویری را نشان می دهد . هیچ طول و عرضی در این
* تبلیغات وجود ندارد ، پس برای تخصص دادن حافظه به این بر چسب برای تبلیغ قبل از اینکه مشاهده شود 
* باید این اطلاعات را به بر چسب <img>اضافه کنید . 
* 
 *------------------------------------------------------------*
  * این کد نیایش بینابینی به تصویر از آدرس زیر نیازمند است: 
  
  * /www/images/layerstyles/%s/...
  * تا قابل دسترسی باشد از: http(s)://%s/layerstyles/%s/...
  *------------------------------------------------------------* 
--فراموش نشود که متن 'Insert_Clicktrack_URL_Here' با 
--  اگر این تبلیغ یک سرور تبلیغاتی 3rd party (non-max) فراخوانی شود . 
-- کلیک جست و جو URL جایگزین کنید .
--
-- فراموش نکنید که هر بار که یک بر چسب از یک سرور 3rdparty(non max) 
-- متن  'Insert_Random_Number_Here' با عدد تصادفی  cache-buster 
-- جایگزین کنید . 
-- 
-- این برچسب برای استفاده در صفحه ی بدون SSL نولید شده سات . اگر این بر چسب 
-- لازم بود که در صفحه SSL درج شود ، تمامی موارد 
  --   'http://%s/...'
  -- را به
  --   'https://%s/...'
  -- تغییر دهید  تراز همیشه فعال معرفی کردن مقدار  $phpAds_raw['html'] به قالب تان اتوماتیک بسته شود بعد از به طور اتوماتیک متلاشی شود بعد از رنگ پس زمینه لایه گذاری بنر رنگ حاشیه دکمه مرکز متن دکمه بستن تاخیر قبل از مخفی شدن بنر جهت مخفی کردن بنر وقتی که مکان نما در حال حرکت نیست تراز افقی انتقال افقی برچسب تصویر بینابینی یا شناوری برچسب DHTML برچسب Javascript چپ حاشیه سمت چپمح چپ به راست محدود برچسب حالت محلی به صورت چرخشی میانی برچسب تصویر بدون کوکی گزینه-SSL گزینه - بدون script توقف محل قرارگیری نطر برچسب پنجره  کد ناشر - فراخوانی یک صفحه راست حاشیه سمت راست راست به چپ نشان دادن دکمه [بستن] حرکت صاف سرعت استایل بالا شفافیت بنر مخفی شده پس زمینه شفاف تراز عمودی انتقال عمودی XML-برچسب RPC [بستن] برچسب iFrame 