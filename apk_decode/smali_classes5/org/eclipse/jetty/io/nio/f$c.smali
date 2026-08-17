.class public Lorg/eclipse/jetty/io/nio/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/nio/channels/SelectableChannel;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/f$c;->a:Ljava/nio/channels/SelectableChannel;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/f$c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
