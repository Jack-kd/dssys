.class Lcom/baidu/mobads/sdk/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IOAdEventListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/internal/o;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/p;->a:Lcom/baidu/mobads/sdk/internal/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/internal/q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/baidu/mobads/sdk/internal/q;-><init>(Lcom/baidu/mobads/sdk/internal/p;Lcom/baidu/mobads/sdk/api/IOAdEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
