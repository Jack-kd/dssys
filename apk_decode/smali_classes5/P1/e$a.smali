.class public LP1/e$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP1/e;->n0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP1/e;


# direct methods
.method public constructor <init>(LP1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP1/e$a;->b:LP1/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LP1/e$a;->b:LP1/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LP1/e;->l0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    sget-object v1, LP1/e;->Q:LR1/c;

    .line 10
    .line 11
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
