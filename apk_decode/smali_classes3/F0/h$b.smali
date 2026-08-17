.class public LF0/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF0/h;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LF0/h;


# direct methods
.method public constructor <init>(LF0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, LF0/h$b;->b:LF0/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LF0/h$b;->b:LF0/h;

    .line 2
    .line 3
    invoke-static {v0}, LF0/h;->b(LF0/h;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LF0/h$b;->b:LF0/h;

    .line 10
    .line 11
    invoke-static {v0}, LF0/h;->e(LF0/h;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, LF0/h$b;->b:LF0/h;

    .line 16
    .line 17
    invoke-static {v0}, LF0/h;->b(LF0/h;)Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, LF0/h$b;->b:LF0/h;

    .line 28
    .line 29
    invoke-static {v0}, LF0/h;->c(LF0/h;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-wide/16 v1, 0x78

    .line 34
    .line 35
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, LF0/h$b;->b:LF0/h;

    .line 40
    .line 41
    const-string v1, "onPipStop"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v1, v2}, LF0/h;->d(LF0/h;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, LF0/h$b;->b:LF0/h;

    .line 48
    .line 49
    invoke-static {v0}, LF0/h;->e(LF0/h;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
