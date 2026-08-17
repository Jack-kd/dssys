.class public final Landroidx/browser/customtabs/PrefetchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/browser/customtabs/ExperimentalPrefetch;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/PrefetchOptions$Builder;
    }
.end annotation


# static fields
.field private static final KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN:Ljava/lang/String; = "androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN"

.field private static final KEY_SOURCE_ORIGIN:Ljava/lang/String; = "androidx.browser.customtabs.PrefetchOptions.KEY_SOURCE_ORIGIN"


# instance fields
.field public final requiresAnonymousIpWhenCrossOrigin:Z

.field public final sourceOrigin:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/browser/customtabs/PrefetchOptions;->requiresAnonymousIpWhenCrossOrigin:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/customtabs/PrefetchOptions;->sourceOrigin:Landroid/net/Uri;

    .line 7
    .line 8
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/PrefetchOptions;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const-string v2, "androidx.browser.customtabs.PrefetchOptions.KEY_SOURCE_ORIGIN"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const-class v0, Landroid/net/Uri;

    .line 10
    .line 11
    invoke-static {p0, v2, v0}, Landroidx/browser/customtabs/Api33Impl;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/Uri;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/net/Uri;

    .line 23
    .line 24
    :goto_0
    new-instance v1, Landroidx/browser/customtabs/PrefetchOptions;

    .line 25
    .line 26
    const-string v2, "androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN"

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/PrefetchOptions;-><init>(ZLandroid/net/Uri;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN"

    .line 7
    .line 8
    iget-boolean v2, p0, Landroidx/browser/customtabs/PrefetchOptions;->requiresAnonymousIpWhenCrossOrigin:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/browser/customtabs/PrefetchOptions;->sourceOrigin:Landroid/net/Uri;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v2, "androidx.browser.customtabs.PrefetchOptions.KEY_SOURCE_ORIGIN"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method
