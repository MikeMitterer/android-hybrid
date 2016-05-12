package at.mikemitterer.hybrid.bridge;

import android.content.Context;
import android.webkit.JavascriptInterface;
import android.widget.Toast;

/**
 * Created by mikemitterer on 12.05.16.
 */
public class WebAppInterface {
    final Context mContext;

    /** Instantiate the interface and set the context */
    public WebAppInterface(final Context context) {
        mContext = context;
    }

    /** Show a toast from the web page */
    @JavascriptInterface
    public void showToast(String toast) {
        Toast.makeText(mContext, toast, Toast.LENGTH_SHORT).show();
    }
}