# QR School Attendance — साफ़ नया प्रोजेक्ट

यह नया source पुराने `lib/main.dart` से अलग है, इसलिए पुराने कोड की अतिरिक्त `}` वाली syntax गलती इसमें नहीं है।

## Codespaces में शुरू करने के चरण

1. इस ZIP को डाउनलोड करके अपने GitHub repository में upload करें और extract करें। `pubspec.yaml` और `lib/main.dart` repository के मुख्य फ़ोल्डर में होने चाहिए।
2. Codespaces Terminal खोलें और यह कमांड चलाएँ:

   ```bash
   flutter create .
   ```

   अगर पूछे कि फाइलें overwrite करनी हैं, तो अपने नए प्रोजेक्ट की फाइलों के लिए ही आगे बढ़ें; पुराने प्रोजेक्ट पर यह न चलाएँ।
3. फिर चलाएँ:

   ```bash
   flutter pub get
   ```
4. Android कैमरा अनुमति के लिए `android/app/src/main/AndroidManifest.xml` में `<application` टैग से पहले यह लाइन जोड़ें:

   ```xml
   <uses-permission android:name="android.permission.CAMERA" />
   ```
5. कोड जाँचें:

   ```bash
   flutter analyze
   ```

## इसमें क्या है

- छात्र का नाम और कक्षा डालकर QR बनाना
- कैमरे से QR स्कैन करके उपस्थिति दर्ज करना
- आज की उपस्थिति स्क्रीन पर देखना
- एक ही दिन में एक ही छात्र की दोहरी उपस्थिति रोकना

**सीमा:** अभी उपस्थिति ऐप बंद होने पर सुरक्षित नहीं रहती। डेटाबेस/स्थायी सेविंग, शिक्षक लॉगिन और Excel/PDF export शामिल नहीं हैं। Android/iOS platform फ़ोल्डर ZIP में नहीं हैं; `flutter create .` उन्हें बनाएगा।
