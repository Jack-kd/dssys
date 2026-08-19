.class public Lcom/baidu/oauth/sdkbqt/auth/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/auth/j$a;


# instance fields
.field public final synthetic a:Lq/c;

.field public final synthetic b:Lcom/baidu/oauth/sdkbqt/auth/k;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/k;Lq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/l;->b:Lcom/baidu/oauth/sdkbqt/auth/k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/l;->a:Lq/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    new-instance v0, Ls/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ls/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/m;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/baidu/oauth/sdkbqt/auth/m;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Lcom/baidu/oauth/sdkbqt/auth/m;->b(Ljava/lang/Long;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Ls/c;->o:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1}, Ls/b;->c(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/l;->a:Lq/c;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lq/b;->onSuccess(Ls/b;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
