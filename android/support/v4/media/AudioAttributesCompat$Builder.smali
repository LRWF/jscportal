.class public Landroid/support/v4/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:I

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 388
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 389
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/AudioAttributesCompat;)V
    .registers 3

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 388
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 389
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    .line 409
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 410
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 411
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 412
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getRawLegacyStreamType()I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/AudioAttributesCompat;
    .registers 6

    .line 423
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_37

    .line 424
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 426
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 427
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 428
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 429
    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 431
    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 433
    :cond_2b
    new-instance v1, Landroid/support/v4/media/AudioAttributesImplApi21;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    invoke-direct {v1, v0, v2}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    goto :goto_44

    .line 435
    :cond_37
    new-instance v1, Landroid/support/v4/media/AudioAttributesImplBase;

    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iget v4, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/support/v4/media/AudioAttributesImplBase;-><init>(IIII)V

    .line 438
    :goto_44
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;-><init>(Landroid/support/v4/media/AudioAttributesImpl;)V

    return-object v0
.end method

.method public setContentType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 2

    packed-switch p1, :pswitch_data_a

    const/4 p1, 0x0

    .line 518
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_9

    .line 515
    :pswitch_7  #0x0, 0x1, 0x2, 0x3, 0x4
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    :goto_9
    return-object p0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7  #00000000
        :pswitch_7  #00000001
        :pswitch_7  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
    .end packed-switch
.end method

.method public setFlags(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 3

    and-int/lit16 p1, p1, 0x3ff

    .line 534
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    return-object p0
.end method

.method setInternalLegacyStreamType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_52

    const-string v0, "AudioAttributesCompat"

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for AudioAttributesCompat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 594
    :pswitch_21  #0xa
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 591
    :pswitch_24  #0x9
    iput v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 588
    :pswitch_27  #0x8
    iput v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 566
    :pswitch_2a  #0x7
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    goto :goto_45

    .line 584
    :pswitch_30  #0x6
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 585
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    goto :goto_4a

    .line 581
    :pswitch_38  #0x5
    iput v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 578
    :pswitch_3b  #0x4
    iput v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    :pswitch_3e  #0x3
    const/4 v0, 0x2

    .line 575
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 572
    :pswitch_42  #0x2
    iput v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 569
    :goto_45
    :pswitch_45  #0x1
    iput v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_4a

    .line 563
    :pswitch_48  #0x0
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 599
    :goto_4a
    invoke-static {p1}, Landroid/support/v4/media/AudioAttributesCompat;->usageForStreamType(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_45  #00000001
        :pswitch_42  #00000002
        :pswitch_3e  #00000003
        :pswitch_3b  #00000004
        :pswitch_38  #00000005
        :pswitch_30  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
        :pswitch_24  #00000009
        :pswitch_21  #0000000a
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_c

    .line 547
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 551
    :cond_c
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    .line 552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    .line 553
    invoke-virtual {p0, p1}, Landroid/support/v4/media/AudioAttributesCompat$Builder;->setInternalLegacyStreamType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;

    move-result-object p1

    return-object p1

    :cond_19
    return-object p0
.end method

.method public setUsage(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 4

    packed-switch p1, :pswitch_data_1c

    const/4 p1, 0x0

    .line 491
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1b

    .line 484
    :pswitch_7  #0x10
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_14

    .line 485
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1b

    :cond_14
    const/16 p1, 0xc

    .line 487
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1b

    .line 481
    :pswitch_19  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    :goto_1b
    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_19  #00000001
        :pswitch_19  #00000002
        :pswitch_19  #00000003
        :pswitch_19  #00000004
        :pswitch_19  #00000005
        :pswitch_19  #00000006
        :pswitch_19  #00000007
        :pswitch_19  #00000008
        :pswitch_19  #00000009
        :pswitch_19  #0000000a
        :pswitch_19  #0000000b
        :pswitch_19  #0000000c
        :pswitch_19  #0000000d
        :pswitch_19  #0000000e
        :pswitch_19  #0000000f
        :pswitch_7  #00000010
    .end packed-switch
.end method
