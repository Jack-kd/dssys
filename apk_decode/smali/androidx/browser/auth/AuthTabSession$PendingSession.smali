.class public Landroidx/browser/auth/AuthTabSession$PendingSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/browser/customtabs/ExperimentalPendingSession;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingSession"
.end annotation


# instance fields
.field private final mCallback:Landroidx/browser/auth/AuthTabCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/browser/auth/AuthTabCallback;)V
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
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mId:Landroid/app/PendingIntent;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/browser/auth/AuthTabCallback;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mId:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method
