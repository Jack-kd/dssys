.class public final synthetic LF1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Z;


# instance fields
.field public final synthetic b:LF1/e;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(LF1/e;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF1/c;->b:LF1/e;

    iput-object p2, p0, LF1/c;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, LF1/c;->b:LF1/e;

    iget-object v1, p0, LF1/c;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, LF1/e;->E(LF1/e;Ljava/lang/Runnable;)V

    return-void
.end method
