<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>

    <xsl:template match="/">


        <TriggerFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <Header>
                <Identifier>HDR</Identifier>
                <DataSource/>
                <MessageID>
                    <xsl:value-of select="//Header/MessageId"/>
                </MessageID>
                <EventCount>1</EventCount>
                <RunDateTime>12122016T09:47:46</RunDateTime>
            </Header>
            <TriggerRecord>
                <Event_Ref_Num>
                    <xsl:value-of select="//TriggerRecord/Event_Ref_Num"/>
                </Event_Ref_Num>
                <Bureau>
                    <xsl:value-of select="//TriggerRecord/Bureau"/>
                </Bureau>
                <UCR>
                    <xsl:value-of select="//TriggerRecord/UCR"/>
                </UCR>
                <TransactionReference>
                    <xsl:value-of select="//TriggerRecord/TransactionReference"/>
                </TransactionReference>
                <LogFile>RUDA</LogFile>
                <ActionParticipantType>
					<xsl:value-of select="//TriggerRecord/ActionParticipantType"/>
				</ActionParticipantType>
                <ActionParticipant>
					<xsl:value-of select="//TriggerRecord/ActionParticipant"/>
				</ActionParticipant>
                <ActionDatetime>06072012T09:30:22</ActionDatetime>
                <DateAdded>30042012</DateAdded>
                <TimeAdded>13:21:24</TimeAdded>
                <Company_SyndicateIdentification>
                    <xsl:value-of select="//TriggerRecord/Company_SyndicateIdentification"/>
                </Company_SyndicateIdentification>
                <ClaimLineNumber>
                    <xsl:value-of select="//TriggerRecord/ClaimLineNumber"/>
                </ClaimLineNumber>
                <ActionTypeQual>AAA</ActionTypeQual>
                <ActionTypeSubType>AAA</ActionTypeSubType>
                <ActionTypeResponse>AAA</ActionTypeResponse>

                <ActionCode>
                    <xsl:value-of select="//TriggerRecord/ActionCode"/>
                </ActionCode>
                <ResponseCode>
					<xsl:value-of select="//TriggerRecord/ResponseCode"/>
				</ResponseCode>
                <UniqueMarketReference>
                    <xsl:value-of select="//TriggerRecord/UniqueMarketReference"/>
                </UniqueMarketReference>
                <TransactionStatus>
                    <xsl:value-of select="//TriggerRecord/TransactionStatus"/>
                </TransactionStatus>
                <TransactionType>
                    <xsl:value-of select="//TriggerRecord/TransactionType"/>
                </TransactionType>
                <ECFIndicator>
                    <xsl:value-of select="//TriggerRecord/ECFIndicator"/>
                </ECFIndicator>
                <Company_SyndicateSignedLinepct>
                    <xsl:value-of select="//TriggerRecord/Company_SyndicateSignedLinepct"/>
                </Company_SyndicateSignedLinepct>
                <CarrierReference1>
                    <xsl:value-of select="//TriggerRecord/CarrierReference1"/>
                </CarrierReference1>
                <CarrierReference2>
                    <xsl:value-of select="//TriggerRecord/CarrierReference2"/>
                </CarrierReference2>
                <Role>
                    <xsl:value-of select="//TriggerRecord/Role"/>
                </Role>

                <Amounts>
                    <Outstanding_Indemnity>
                        <xsl:value-of select="//TriggerRecord/Amounts/Outstanding_Indemnity"/>
                    </Outstanding_Indemnity>
                    <PreviouslyPaid_OrigCcy_100pctOfOrder>
                        <xsl:value-of select="//TriggerRecord/Amounts/PreviouslyPaid_OrigCcy_100pctOfOrder"/>
                    </PreviouslyPaid_OrigCcy_100pctOfOrder>
                    <Incurred_OrigCcy_100pctOfOrder>
                        <xsl:value-of select="//TriggerRecord/Amounts/Incurred_OrigCcy_100pctOfOrder"/>
                    </Incurred_OrigCcy_100pctOfOrder>
                    <Settlement_OrigCcy>
                        <xsl:value-of select="//TriggerRecord/Amounts/Settlement_OrigCcy"/>
                    </Settlement_OrigCcy>
                    <OriginalCurrency>
                        <xsl:value-of select="//TriggerRecord/Amounts/OriginalCurrency"/>
                    </OriginalCurrency>
                    <RateOfExchange>
                        <xsl:value-of select="//TriggerRecord/Amounts/RateOfExchange"/>
                    </RateOfExchange>
                    <OutstandingQualifier>
                        <xsl:value-of select="//TriggerRecord/Amounts/OutstandingQualifier"/>
                    </OutstandingQualifier>
                </Amounts>


                <RiskCode_LloydsOnly>
                    <xsl:value-of select="//RiskCode_LloydsOnly"/>
                </RiskCode_LloydsOnly>
                <LloydsCatCode/>
                <PCSCode/>
                <LossDateFrom>
                    <xsl:value-of select="//LossDateFrom"/>
                </LossDateFrom>
                <LossDateTo/>
                <ClaimsRef1>
                    <xsl:value-of select="//ClaimsRef1"/>
                </ClaimsRef1>
                <ClaimsRef2/>
                <YearOfAccount_LloydsOnly>
                    <xsl:value-of select="//YearOfAccount_LloydsOnly"/>
                </YearOfAccount_LloydsOnly>
                <Insured>
                    <xsl:value-of select="//Insured"/>
                </Insured>
                <Reinsured/>
                <LossName>
                    <xsl:value-of select="//LossName"/>
                </LossName>
                <UserID/>
                <SlipLead>
                    <xsl:value-of select="//SlipLead"/>
                </SlipLead>
                <BrokerIdentification>
                    <xsl:value-of select="//BrokerIdentification"/>
                </BrokerIdentification>
                <BrokerContact>
                    <xsl:value-of select="//BrokerContact"/>
                </BrokerContact>
                <IUALossCodes/>
                <TotalNumberOfAgreementParties>
                    <xsl:value-of select="//TotalNumberOfAgreementParties"/>
                </TotalNumberOfAgreementParties>
                <BureauLead_Lloyds>
                    <xsl:value-of select="//BureauLead_Lloyds"/>
                </BureauLead_Lloyds>
                <SecondAgreementParty_Lloyds>
                    <xsl:value-of select="//SecondAgreementParty_Lloyds"/>
                </SecondAgreementParty_Lloyds>
                <BureauLead_ILU>
                    <xsl:value-of select="//BureauLead_ILU"/>
                </BureauLead_ILU>
                <SecondAgreementParty_ILU>
                    <xsl:value-of select="//SecondAgreementParty_ILU"/>
                </SecondAgreementParty_ILU>
                <BureauLead_LIRMA>
                    <xsl:value-of select="//BureauLead_LIRMA"/>
                </BureauLead_LIRMA>
                <Claim_Cat/>
                <Sequence_Num>
                    <xsl:value-of select="//Sequence_Num"/>
                </Sequence_Num>
                <Triage_Category>Not Specified</Triage_Category>
            </TriggerRecord>
        </TriggerFile>

    </xsl:template>

</xsl:stylesheet>