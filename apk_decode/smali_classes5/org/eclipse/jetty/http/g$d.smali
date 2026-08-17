.class public Lorg/eclipse/jetty/http/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/eclipse/jetty/http/g;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/eclipse/jetty/http/g$d;->a:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jetty/http/g$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jetty/http/g$d;-><init>()V

    return-void
.end method
