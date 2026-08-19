.class public Lcom/baidu/oauth/sdkbqt/auth/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->R(Lcom/baidu/oauth/sdkbqt/auth/i;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->s(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
