.class public LP1/e$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP1/e;->o0(I)V
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
    iput-object p1, p0, LP1/e$b;->b:LP1/e;

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
    .locals 1

    .line 1
    iget-object v0, p0, LP1/e$b;->b:LP1/e;

    .line 2
    .line 3
    invoke-virtual {v0}, LP1/e;->m0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
