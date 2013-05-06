package org.ruboto.core;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.os.Bundle;
import android.widget.Toast;
import java.util.List;

public class RubotoCoreActivity extends RedirectActivity {
	public void onCreate(Bundle bundle) {
		getScriptInfo().setRubyClassName(getClass().getSimpleName());
	    super.onCreate(bundle);
	}
}
