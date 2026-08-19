.class public interface abstract Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;,
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$MinimalUiMode;,
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$BrowserMode;,
        Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;
    }
.end annotation


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "androidx.browser.trusted.displaymode.KEY_ID"


# direct methods
.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 2

    .line 1
    const-string v0, "androidx.browser.trusted.displaymode.KEY_ID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    if-eq v0, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    if-eq v0, p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;

    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$MinimalUiMode;

    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$MinimalUiMode;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$BrowserMode;

    .line 29
    .line 30
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$BrowserMode;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    invoke-static {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public abstract toBundle()Landroid/os/Bundle;
.end method
