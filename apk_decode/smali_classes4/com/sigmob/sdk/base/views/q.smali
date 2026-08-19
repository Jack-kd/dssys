.class public Lcom/sigmob/sdk/base/views/q;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/q$a;,
        Lcom/sigmob/sdk/base/views/q$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "q"


# instance fields
.field private b:Lcom/sigmob/sdk/base/views/q$b;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/view/Window;

.field private f:Lcom/sigmob/sdk/base/views/g;

.field private final g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/io/File;

.field private k:Z

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/os/Handler;

.field private n:Landroid/app/Activity;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/base/k;->f()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->e:Landroid/view/Window;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/q;->b()Lcom/sigmob/sdk/base/views/g;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/q;->f()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/q$b;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/q;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/q;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/q;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/q;->m:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/views/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/views/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/q;->i()V

    return-void
.end method

.method private e()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_info:Ljava/util/Map;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_info:Ljava/util/Map;

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/q;->c:Ljava/util/Map;

    :cond_1
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/utils/n;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".html"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/utils/n;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->j:Ljava/io/File;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "showWebView: ad_privacy is null."

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->j:Ljava/io/File;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/q;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/g;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    new-instance v3, Lcom/sigmob/sdk/base/views/q$a;

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/q;->c:Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/sigmob/sdk/base/views/q$a;-><init>(Ljava/util/Map;)V

    const-string v4, "sigPrivacy"

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/sdk/base/views/g;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/g;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v2, "PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9ImVuIj4KPGhlYWQ+CiAgICA8bWV0YSBjaGFyc2V0PSJVVEYtOCI+CiAgICA8bWV0YSBuYW1lPSJ2aWV3cG9ydCIKICAgICAgICAgIGNvbnRlbnQ9IndpZHRoPWRldmljZS13aWR0aCxpbml0aWFsLXNjYWxlPTEsbWF4aW11bS1zY2FsZT0xLHVzZXItc2NhbGFibGU9MCI+CiAgICA8bWV0YSBjb250ZW50PSJ5ZXMiIG5hbWU9ImFwcGxlLW1vYmlsZS13ZWItYXBwLWNhcGFibGUiPgogICAgPG1ldGEgaHR0cC1lcXVpdj0iWC1VQS1Db21wYXRpYmxlIiBjb250ZW50PSJJRT1lZGdlLGNocm9tZT0xIj4KICAgIDxtZXRhIG5hbWU9InJlbmRlcmVyIiBjb250ZW50PSJ3ZWJraXQiPgogICAgPGxpbmsgcmVsPSJpY29uIiBocmVmPSJkYXRhOmltYWdlL2ljbztiYXNlNjQsYVdOdiI+CiAgICA8dGl0bGU+5paw54mINuimgee0oDY2NjI8L3RpdGxlPgogICAgPHN0eWxlPmh0bWwsIGJvZHksICNhcHAgewogICAgICBtYXJnaW46IDA7CiAgICAgIHdpZHRoOiAxMDB2dzsKICAgICAgaGVpZ2h0OiAxMDB2aDsKICAgICAgb3ZlcmZsb3c6IGhpZGRlbjsKICAgICAgYmFja2dyb3VuZDogdHJhbnNwYXJlbnQgIWltcG9ydGFudDsKICAgIH0KICAgICNlcnJvcl9tYXNrIHsKICAgICAgZGlzcGxheTogbm9uZTsKICAgICAgZmxleC1kaXJlY3Rpb246IGNvbHVtbjsKICAgICAgd2lkdGg6IDEwMHZ3OwogICAgICBoZWlnaHQ6IDEwMHZoOwogICAgICBhbGlnbi1pdGVtczogY2VudGVyOwogICAgICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjsKICAgICAgYmFja2dyb3VuZDogcmdiYSgwLDAsMCwwLjYpOwogICAgfQogICAgI2Vycm9yX21hc2sgLmNsb3NlIHsKICAgICAgei1pbmRleDogOTk5OTsKICAgICAgd2lkdGg6IDI4cHg7CiAgICAgIGhlaWdodDogMjhweDsKICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UzMzEyMjsKICAgICAgY29sb3I6ICNmZmY7CiAgICAgIHBhZGRpbmc6IDRweDsKICAgICAgYm9yZGVyLXJhZGl1czogNTAlOwogICAgICB0b3A6IDEwcHg7CiAgICAgIHJpZ2h0OiAxMHB4OwogICAgfQogICAgI2Vycm9yX21hc2sgLmVycm9yIHsKICAgICAgZm9udC1zaXplOiAyMHB4OwogICAgICBjb2xvcjogI2UzMzEyMjsKICAgICAgbWFyZ2luLWJvdHRvbTogMjBweDsKICAgIH0KICAgIDwvc3R5bGU+CiAgICA8ZGl2IGlkPSJlcnJvcl9tYXNrIj48cCBjbGFzcz0iZXJyb3IiPuWFreimgee0oOWKoOi9veWksei0pX48L3A+CiAgICAgICAgPHN2ZyBjbGFzcz0iY2xvc2UiIGlkPSJjbG9zZSIgZmlsbD0iY3VycmVudENvbG9yIiB0PSIxNTk1NDc1OTMzNzE2IiBjbGFzcz0iaWNvbiIKICAgICAgICAgICAgIHZpZXdCb3g9IjAgMCAxMDI0IDEwMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBwLWlkPSIyMDExIgogICAgICAgICAgICAgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgICAgICAgICA8cGF0aCBkPSJNMTAzLjY4OCA5MzguNTc2YTI4IDI4IDAgMCAxLTE5LjgtNDcuOEw4OTguMTUyIDc2LjUyYTI4IDI4IDAgMSAxIDM5LjYgMzkuNTkyTDEyMy40ODggOTMwLjRhMjcuOTIgMjcuOTIgMCAwIDEtMTkuOCA4LjE3NnoiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTkxNy45NTIgOTM4LjU3NmEyNy45MjggMjcuOTI4IDAgMCAxLTE5LjgtOC4yTDgzLjg4OCAxMTYuMTEyYTI4IDI4IDAgMCAxIDM5LjYtMzkuNTkybDgxNC4yNjQgODE0LjI1NmEyOCAyOCAwIDAgMS0xOS44IDQ3Ljh6Ij48L3BhdGg+CiAgICAgICAgPC9zdmc+CiAgICA8L2Rpdj4KICAgIDxzY3JpcHQ+ZnVuY3Rpb24gaWZyYW1lU2VuZFNyYyhzcmMpIHsKICAgICAgdmFyIGlmcmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2lmcmFtZScpCiAgICAgIGlmcmFtZS5zZXRBdHRyaWJ1dGUoJ3NyYycsIHNyYykKICAgICAgZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKGlmcmFtZSkKICAgICAgaWZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoaWZyYW1lKQogICAgICBpZnJhbWUgPSBudWxsCiAgICB9CgogICAgc2V0VGltZW91dCgoKSA9PiB7CiAgICAgIGlmICghd2luZG93LklOSVQpIHsKICAgICAgICBjb25zdCBlcnJvck1hc2sgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnZXJyb3JfbWFzaycpCiAgICAgICAgY29uc3QgY2xvc2VEb20gPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnY2xvc2UnKQogICAgICAgIGVycm9yTWFzay5zdHlsZS5kaXNwbGF5ID0gJ2ZsZXgnCiAgICAgICAgY2xvc2VEb20ub25jbGljayA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgIGlmcmFtZVNlbmRTcmMoJ3NpZ21vYkFkOi8vY2xvc2VGb3VyRWxlbWVudHMnKQogICAgICAgIH0KICAgICAgfQogICAgfSwgMzAwMCkKICAgIDwvc2NyaXB0PgogICAgPGxpbmsgaHJlZj0iaHR0cHM6Ly9uLnNpZ21vYi5jbi9tcmFpZC9wcm9kLzY2NjIvNjY2Mi5hMzM2ZDVlMS5qcyIgcmVsPSJwcmVsb2FkIiBhcz0ic2NyaXB0Ij4KICAgIDxsaW5rIGhyZWY9Imh0dHBzOi8vbi5zaWdtb2IuY24vbXJhaWQvcHJvZC82NjYyLzY2NjIuYzc1MDZhMDcuY3NzIiByZWw9InByZWxvYWQiIGFzPSJzdHlsZSI+CiAgICA8bGluayBocmVmPSJodHRwczovL24uc2lnbW9iLmNuL21yYWlkL3Byb2QvNjY2Mi82NjYyLmM3NTA2YTA3LmNzcyIgcmVsPSJzdHlsZXNoZWV0Ij4KICAgIDxzY3JpcHQ+CiAgICAgICAgdmFyIHNpZ21vYj13aW5kb3cuc2lnbW9iPXt9LHByaXZhY3lJbmZvPXt9LGlmcmFtZVNlbmRTcmM9ZnVuY3Rpb24oaSl7dmFyIG89ZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgiaWZyYW1lIik7by5zZXRBdHRyaWJ1dGUoInNyYyIsaSksZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKG8pLG8ucGFyZW50Tm9kZS5yZW1vdmVDaGlsZChvKX0saW5pdFByaXZhY3lJbmZvPShzaWdtb2IuZ2V0UHJpdmFjeUluZm89ZnVuY3Rpb24oKXtyZXR1cm4gcHJpdmFjeUluZm99LHNpZ21vYi5jbG9zZUZvdXJFbGVtZW50cz1mdW5jdGlvbigpe2lmcmFtZVNlbmRTcmMoInNpZ21vYkFkOi8vY2xvc2VGb3VyRWxlbWVudHMiKX0sc2lnbW9iLnVzZUN1c3RvbUNsb3NlPWZ1bmN0aW9uKCl7aWZyYW1lU2VuZFNyYygic2lnbW9iQWQ6Ly91c2VDdXN0b21DbG9zZSIpfSxzaWdtb2IuYnV0dG9uQ2xpY2s9ZnVuY3Rpb24oaSxvLG4pe2lmcmFtZVNlbmRTcmMobj8ic2lnbW9iQWQ6Ly9idXR0b25DbGljaz91cmw9IituKyImeD0iK2krIiZ5PSIrbzoic2lnbW9iQWQ6Ly9idXR0b25DbGljaz94PSIraSsiJnk9IitvKX0sZnVuY3Rpb24oKXt3aW5kb3cuc2lnUHJpdmFjeT9wcml2YWN5SW5mbz13aW5kb3cuc2lnUHJpdmFjeS5nZXRQcml2YWN5SW5mbygpOmNvbnNvbGUuZXJyb3IoInNpZ1ByaXZhY3nms6jlhozlpLHotKU9PT0iKX0pO2luaXRQcml2YWN5SW5mbygpOwogICAgPC9zY3JpcHQ+CjwvaGVhZD4KPGJvZHk+CjxkaXYgaWQ9ImFwcCI+PC9kaXY+CjxzY3JpcHQgc3JjPSJodHRwczovL24uc2lnbW9iLmNuL21yYWlkL3Byb2QvNjY2Mi82NjYyLmEzMzZkNWUxLmpzIj48L3NjcmlwdD4KPC9ib2R5Pgo8L2h0bWw+"

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    const-string v6, "utf-8"

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v5, "text/html"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error: htmlUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " htmlFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/q;->j:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v10, 0x0

    const-string v3, "h5_error"

    const-string v4, "download_dialog"

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/views/q;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/q;->a(Landroid/view/View;)V

    return-void
.end method

.method private f()Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    sget-object v1, Lcom/sigmob/sdk/base/views/s;->e:Lcom/sigmob/sdk/base/views/s;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/s;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/sigmob/sdk/base/views/S;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/S;-><init>(Lcom/sigmob/sdk/base/views/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->e:Landroid/view/Window;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->e:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic i()V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/q;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/q;->g()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/views/q$b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 4
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/sigmob/sdk/base/views/g;
    .locals 2

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/g;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/g;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/g;->setAdUnit(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/common/b;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    new-instance v1, Lcom/sigmob/sdk/base/views/q$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/q$1;-><init>(Lcom/sigmob/sdk/base/views/q;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    new-instance v1, Lcom/sigmob/sdk/base/views/q$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/q$2;-><init>(Lcom/sigmob/sdk/base/views/q;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/g;->destroy()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/q;->m:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/q;->h:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/q;->d:Landroid/content/Context;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->l:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->e:Landroid/view/Window;

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/view/Window;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->l:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/q;->f:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->m:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/views/T;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/T;-><init>(Lcom/sigmob/sdk/base/views/q;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/q;->h()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    sget-object p1, Lcom/sigmob/sdk/base/views/q;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDismiss"

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/base/views/q;->o:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/q$b;->a()V

    :cond_1
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    sget-object p1, Lcom/sigmob/sdk/base/views/q;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "onShow"

    invoke-static {v2, p1, v3, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->b(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/q;->b:Lcom/sigmob/sdk/base/views/q$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/q$b;->b()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/sigmob/sdk/b;->i()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->c()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/q;->o:I

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/q;->n:Landroid/app/Activity;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/q;->e()V

    return-void
.end method
