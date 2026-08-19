package com.ubix.ssp.ad.e.w;

/* loaded from: classes5.dex */
public enum j {
    LaunchStart("launch_start", "100000"),
    LaunchLocalSuccess("launch_local_succ", "100200"),
    LaunchLocalFail("launch_local_fail", "1", 2),
    LaunchNetFail("launch_net_fail", "1", 2),
    DetectSuccess("ask_succ", "600200", 4),
    RequestStart("request_start", "200000"),
    RequestSuccess("request_succ", "200200"),
    RequestFail("request_fail", "2", 2),
    ResponseSuccess("response_succ", "201200"),
    ResponseFail("response_fail", "2", 2),
    RenderStart("render_start", "300000"),
    RenderSuccess("render_succ", "300200"),
    RenderFail("render_fail", "3", 2),
    FilledSuccess("filled_succ", "202200"),
    FilledFail("filled_fail", "2", 2),
    ShowStart("show_start", "400000"),
    ShowSuccess("show_succ", "400200"),
    ShowFail("show_fail", "4", 2),
    ShowRepeat("show_repeat", "400200"),
    ClickSuccess("click_succ", "500200"),
    ClickRepeat("click_repeat", "500200"),
    ClickTarget("click_target", "500300"),
    ClickDelayStart("delay_start", "500100"),
    ClickDelaySuccess("delay_succ", "500200"),
    Crash("crash_msg", "700000", 8),
    Monitor("monitor_msg", "9", 16),
    Feedback("feedback", "6", 32),
    AppList("fetch_applist", "601200", 4),
    AppListException("applist_error", "601100", 4),
    RewardStart("reward_start", "9", 16),
    RewardSucc("reward_succ", "9", 16),
    RewardFail("reward_fail", "9", 16),
    RewardOffline("reward_offline", "9", 16);


    /* renamed from: I, reason: collision with root package name */
    private String f47353I;

    /* renamed from: J, reason: collision with root package name */
    private String f47354J;

    /* renamed from: K, reason: collision with root package name */
    private int f47355K;

    j(String str, String str2) {
        this(str, str2, 1);
    }

    public String a() {
        return this.f47354J;
    }

    public String b() {
        return this.f47353I;
    }

    public int c() {
        return this.f47355K;
    }

    public boolean d() {
        return name().equals(LaunchLocalSuccess.name()) || name().equals(ResponseSuccess.name()) || name().equals(FilledSuccess.name()) || name().equals(ShowSuccess.name()) || name().equals(ClickSuccess.name()) || name().equals(ClickRepeat.name()) || name().equals(ClickDelayStart.name()) || name().equals(ClickDelaySuccess.name()) || name().equals(Monitor.name()) || name().equals(AppList.name()) || name().equals(RewardSucc.name()) || name().equals(RewardFail.name());
    }

    j(String str, String str2, int i2) {
        this.f47353I = str;
        this.f47354J = str2;
        this.f47355K = i2;
    }
}
