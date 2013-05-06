package org.ruboto.core;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.os.Bundle;
import android.widget.Toast;
import java.util.List;

public class RubotoCoreActivity extends RedirectActivity {
	public void onCreate(Bundle bundle) {
        // String installerPackageName = getIntent().getStringExtra(android.content.Intent.EXTRA_INSTALLER_PACKAGE_NAME);
        String pmInstallerPackageName = getPackageManager().getInstallerPackageName(getPackageName());
        System.out.println("pmInstallerPackageName: " + pmInstallerPackageName);

        if (pmInstallerPackageName != null && !pmInstallerPackageName.equals("com.android.vending")) {
            ActivityManager activityManager = (ActivityManager) this.getSystemService(ACTIVITY_SERVICE);
            List<RunningAppProcessInfo> procInfos = activityManager.getRunningAppProcesses();
            for (int i = 0; i < procInfos.size(); i++) {
                if (procInfos.get(i).processName.equals(pmInstallerPackageName)) {
                    Toast.makeText(getApplicationContext(), "pmInstallerPackageName is running", Toast.LENGTH_LONG).show();
                    finish();
                }
            }
        }
        super.onCreate(bundle);
	}
}
