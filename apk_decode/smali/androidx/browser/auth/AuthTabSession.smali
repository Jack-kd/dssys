.class public final Landroidx/browser/auth/AuthTabSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabSession$PendingSession;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/support/customtabs/IAuthTabCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSession;->mCallback:Landroid/support/customtabs/IAuthTabCallback;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/auth/AuthTabSession;->mComponentName:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/browser/auth/AuthTabSession;->mId:Landroid/app/PendingIntent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession;->mCallback:Landroid/support/customtabs/IAuthTabCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession;->mId:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method
