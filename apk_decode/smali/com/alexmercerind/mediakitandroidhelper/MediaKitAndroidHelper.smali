.class public Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final synthetic a:I

.field private static applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "mediakitandroidhelper"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;->applicationContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native copyAssetToFilesDir(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native deleteGlobalObjectRef(J)V
.end method

.method public static native newGlobalObjectRef(Ljava/lang/Object;)J
.end method

.method public static openFileDescriptorJava(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;->applicationContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "r"

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p0, -0x1

    .line 27
    return p0
.end method

.method public static native openFileDescriptorNative(Ljava/lang/String;)I
.end method

.method public static setApplicationContextJava(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/alexmercerind/mediakitandroidhelper/MediaKitAndroidHelper;->setApplicationContextNative(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static native setApplicationContextNative(Landroid/content/Context;)V
.end method
