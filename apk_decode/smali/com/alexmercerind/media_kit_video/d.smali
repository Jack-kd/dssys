.class public final synthetic Lcom/alexmercerind/media_kit_video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alexmercerind/media_kit_video/d;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alexmercerind/media_kit_video/d;->b:J

    invoke-static {v0, v1}, Lcom/alexmercerind/media_kit_video/e;->a(J)V

    return-void
.end method
