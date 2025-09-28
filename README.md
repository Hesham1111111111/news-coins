# News And Coins And Product  App 📲


## Run 



https://github.com/user-attachments/assets/85132cc8-f8f8-4201-97e5-0c1574644b03



 ## Search  
    Function VS Event 
 🔹 Function (دالة)

هي كتلة كود (instructions) بتعمل حاجة معينة.

بتتكتب مرة واحدة وتقدر تناديها (call) من أي مكان في الكود.

الهدف منها إعادة استخدام الكود بدل ما تكرره
🔹 Event (حدث)

هو إشارة / Notification بتحصل لما حاجة معينة تحصل (user action أو system change).

في البرمجة بـ state management مثل BLoC أو Redux، الـ Event بيكون رسالة بتقول للـ Bloc أو الـ State "فيه حاجة جديدة حصلت، اتصرف".

المستخدم (User) أو النظام هو اللي بيولد الـ Event، وبعدين الـ Bloc/Controller بياخد الإيفنت ويعالجه.


Read VS watch

read

موجودة في package:provider أو flutter_bloc.

بتُستخدم للحصول على القيمة الحالية (state أو object) من الـ Provider أو Bloc.

ما بيعملش إعادة بناء (rebuild) للـ Widget لو القيمة اتغيرت.

مفيد لما تحتاج تستخدم قيمة مرة واحدة فقط.

🔹 watch

برضه من Provider.

بترجع لك القيمة (state) لكن مع الاستماع للتغييرات.

أي تغيير يحصل في القيمة → يعمل rebuild للـ Widget.

مفيد لو محتاج واجهتك تتحدث أوتوماتيك مع التغييرات.

BlocBuilder VS  BlocListener VS BlocConsumer
 🔹 1. BlocBuilder
التعريف:

Widget مسؤولة عن إعادة بناء الواجهة (UI) كل مرة الحالة (State) تتغير.

ما تستخدمش للأكشنات (مثل التنقل أو إظهار SnackBar).

الاستخدام:

لعرض البيانات أو تحديث الواجهة مع تغير الحالة.
🔹 2. BlocListener
التعريف:

Widget مسؤولة عن الاستماع للأحداث (State changes) وتنفيذ أكشن/Side effect بناءً عليها.

ما بتعملش إعادة بناء UI.

الاستخدام:

للتنقل بين الصفحات، إظهار SnackBar، Dialog، Toast.
🔹 3. BlocConsumer
التعريف:

يجمع بين BlocBuilder و BlocListener في Widget واحدة.

فيه builder (لتحديث UI) + listener (لتنفيذ Side effects).

الاستخدام:

لما تحتاج UI يتبني + تنفذ أكشن معًا.



