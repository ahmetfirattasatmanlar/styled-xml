<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:a="http://www.equifax.ca/XMLSchemas/EfxToCust">
	<xsl:decimal-format NaN="0"/>
	
	<xsl:template match="/">
		<html>
			<style type="text/css">
				body{ font-size:10pt;line-height:11pt; background-color:#fff; width:80%; margin:0 auto;background-color:#eee;}
				.MainTable{width:100%; text-align:left; border:1px solid #ddd; background-color:#fff; }
				.SegmentTable{width:100%; text-align:left; border:none; }
				.SegmentTable thead{background-color:#ddd;}
				.SegmentHeader{ background-color:#ddd; padding:5px; }
				.TableHeader{ background-color:#ddd; padding:5px; }
				.TradesTable {width:100%; text-align:left; border:none; }
				.TradesTable > tr{border-bottom:1px solid #ddd;}
				.FieldHeader{font-size:10pt; font-weight:900;}
				.FieldData{}
				  
				.StripedTable tbody tr:nth-child(odd){
					background-color: #efefef; 
					color: #000;
					border-bottom:1px solid #ddd;
				}
			</style>
			<body>
				<h2>Equifax Consumer CA Fixed File.</h2>
				<h3>Subject Response File #1</h3>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">HEADER Segment</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable">
								<thead>
									<tr>
										<th class="FieldHeader">Customer Reference Number</th>
										<th class="FieldHeader">Equifax Canada Member Number</th>
										<th class="FieldHeader">Consumer Referral Code</th>
										<th class="FieldHeader">Language Indicator</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="FieldData" title="Customer Reference Number"/>
										<td class="FieldData" title="Equifax Canada Member Number">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Request/a:CustomerNumber"/>
										</td>
										<td class="FieldData" title="Consumer Referral Code">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Request/a:CustomerReferenceNumber"/>
										</td>
										<td class="FieldData" title="Language Indicator">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Request/a:LanguageIndicator"/>
										</td>
									</tr>
									<tr>
										<th class="FieldHeader">ECOA Inquiry Type</th>
										<th class="FieldHeader">Months To Count Inquiry</th>
										<th class="FieldHeader">Months Count Max Delinquency</th>
										<th/>
									</tr>
									<tr>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Request/a:InquiryType"/>
										</td>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td/>
									</tr>
									<tr>
										<th class="FieldHeader">File Since Date</th>
										<th class="FieldHeader">Date Of Last Activity</th>
										<th class="FieldHeader">Date Of This Report</th>
										<th/>
									</tr>
									<tr>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:CreditFile/a:FileSinceDate"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:CreditFile/a:DateOfLastActivity"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:CreditFile/a:DateOfRequest"/>
										</td>
										<td/>
									</tr>
									<tr>
										<th class="FieldHeader">Total Inquiries</th>
										<th class="FieldHeader">Credit File Warning Message</th>
										<th class="FieldHeader">Card Alert Flag</th>
										<th class="FieldHeader">Deposit Alert Flag</th>
									</tr>
									<tr>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
									</tr>
									<tr>
										<th class="FieldHeader">Subject Last Name</th>
										<th class="FieldHeader">Subject First Name</th>
										<th class="FieldHeader">Subject Middle Name</th>
										<th class="FieldHeader">Subject Suffix</th>
									</tr>
									<tr>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Subject/a:SubjectName/a:LastName"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Subject/a:SubjectName/a:FirstName"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Subject/a:SubjectName/a:MiddleName"/>
										</td>
										<td class="FieldData"/>
									</tr>
									<tr>
										<th class="FieldHeader">Subject Marital Status</th>
										<th class="FieldHeader">Spouse First Name</th>
										<th class="FieldHeader">Spouse SIN</th>
										<th class="FieldHeader">Num Dependents</th>
									</tr>
									<tr>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
									</tr>
									<tr>
										<th class="FieldHeader">Subject SIN</th>
										<th class="FieldHeader">Subject DOB</th>
									</tr>
									<tr>
										<td class="FieldData"/>
										<td class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:Subject/a:SubjectId/a:DateOfBirth"/>
										</td>
										<td class="FieldData"/>
										<td class="FieldData"/>
									</tr>
									<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNFraudWarnings">
										<tr>
											<th colspan="4">
												<xsl:value-of select="a:CNFraudWarning/@description"/>
 
												-											
												
												
												
												
												
												<xsl:value-of select="position()"/>
											</th>
										</tr>
										<tr>
											<td colspan="4">
												<xsl:value-of select="a:CNFraudWarning/a:Messages/a:Message/@description"/>
											</td>
										</tr>
									</xsl:for-each>
									<tr>
										<th colspan="4" class="FieldHeader">Hit No Hit Designator Code:</th>
									</tr>
									<tr>
										<td colspan="4" class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:CreditFile/a:HitCode/@description"/>
										</td>
									</tr>
									<tr>
										<th colspan="4" class="FieldHeader">Credit File Warning Messages:</th>
									</tr>
									<tr>
										<td colspan="4" class="FieldData">
											<xsl:value-of select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNHeader/a:CreditFile/a:UniqueNumber"/>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tbody>
				</table>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Bureau Score Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNScores/a:CNScore">
								<table class="SegmentTable">
									<tbody>
										<tr>
											<td class="FieldHeader">Product Score:</td>
											<td class="FieldData">
												<xsl:value-of select="a:Result/a:Value"/>
											</td>
										</tr>
										<tr>
											<td class="FieldHeader" nowrap="true">Product Identifier:</td>
											<td class="FieldData">
												<xsl:value-of select="@description"/>
											</td>
										</tr>
										<tr>
											<td colspan="2" class="FieldHeader">Reason Codes:</td>
										</tr>
										<xsl:for-each select="a:Reasons/a:Reason">
											<tr>
												<td colspan="2" class="FieldData">
													<xsl:value-of select="@description"/>
												</td>
											</tr>
										</xsl:for-each>
										<tr>
											<td colspan="2" class="FieldHeader">Reject Message Code:</td>
										</tr>
										<xsl:for-each select="a:RejectCodes/a:RejectCode">
											<tr>
												<td colspan="2" class="FieldData">
													<xsl:value-of select="@description"/>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:for-each>
						</td>
					</tbody>
				</table>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Address Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable">
								<thead>
									<tr>
										<td class="FieldHeader">InternalCode</td>
										<td class="FieldHeader">Street #</td>
										<td class="FieldHeader">Street Name</td>
										<td class="FieldHeader">City</td>
										<td class="FieldHeader">Province</td>
										<td class="FieldHeader">Postal Code</td>
										<td class="FieldHeader">Residence Since</td>
										<td class="FieldHeader">Indicator</td>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNAddresses/a:CNAddress">
										<tr>
											<td class="FieldData">
												<xsl:value-of select="@code"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:CivicNumber"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:StreetName"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:City/@code"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:Province/@code"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:PostalCode"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:DateReported"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:UpdateSource/@description"/>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</td>
					</tbody>
				</table>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Also Known As And Prior Name Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable">
								<thead>
									<tr>
										<td class="FieldHeader">InternalCode</td>
										<td class="FieldHeader">Last Name</td>
										<td class="FieldHeader">First Name</td>
										<td class="FieldHeader">Middle Name Or Initial</td>
										<td class="FieldHeader">Suffix</td>
										<td class="FieldHeader">Spouse Name</td>
										<td class="FieldHeader">Legal Name Change</td>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNOtherNames/a:CNOtherName">
										<tr>
											<td class="FieldData">
												<xsl:value-of select="@code"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:FirstName"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:LastName"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:MiddleName"/>
											</td>
											<td class="FieldData">
												<xsl:value-of select="a:Suffix/@code"/>
											</td>
											<td class="FieldData"/>
											<td class="FieldData"/>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</td>
					</tbody>
				</table>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Employer Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable">
								<tr>
									<td class="FieldHeader">Status</td>
									<td class="FieldHeader">Monthly Salary</td>
									<td class="FieldHeader">Occupation</td>
									<td class="FieldHeader">Employer Name</td>
									<td class="FieldHeader">City</td>
									<td class="FieldHeader">Province</td>
									<td class="FieldHeader">Date Employed</td>
									<td class="FieldHeader">Date Verified</td>
									<td class="FieldHeader">Verification Status</td>
									<td class="FieldHeader">Date Left</td>
								</tr>
								<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNEmployments/a:CNEmployment">
									<tr>
										<td class="FieldDate">
											<xsl:value-of select="@description"/>
										</td>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData">
											<xsl:value-of select="a:Employer"/>
										</td>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData"/>
									</tr>
								</xsl:for-each>
							</table>
						</td>
					</tbody>
				</table>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Collection Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable StripedTable">
								<thead>
									<tr>
										<td class="FieldHeader">Type</td>
										<td class="FieldHeader">Reason 
											
											
											
											
											<br/>
Code
										
										
										
										
										</td>
										<td class="FieldHeader">Foreign Bureau 
											
											
											
											
											<br/>
Code
										
										
										
										
										</td>
										<td class="FieldHeader">Date 
											
											
											
											
											<br/>
Reported
										
										
										
										
										</td>
										<td class="FieldHeader">Member 
											
											
											
											
											<br/>
Name
										
										
										
										
										</td>
										<td class="FieldHeader">Member 
											
											
											
											
											<br/>
Number
										
										
										
										
										</td>
										<td class="FieldHeader">IndustryCode</td>
										<td class="FieldHeader">Date Paid</td>
										<td class="FieldHeader">Date Of 
											
											
											
											
											<br/>
Last Payment
										
										
										
										
										</td>
										<td class="FieldHeader">Creditor 
											
											
											
											
											<br/>
Name/Number
										
										
										
										
										</td>
										<td class="FieldHeader">Ledger 
											
											
											
											
											<br/>
Number
										
										
										
										
										</td>
										<td class="FieldHeader">Amount</td>
										<td class="FieldHeader">Balance</td>
									</tr>
								</thead>
								<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNCollections/a:CNCollection">
									<tr>
										<td class="FieldData">
											<xsl:value-of select="@code"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:Reason/@code"/>
										</td>
										<td class="FieldData"/>
										<td class="FieldData">
											<xsl:value-of select="a:AssignedDate"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:AgencyId/a:CustomerNumber"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:AgencyId/a:Name"/>
										</td>
										<td class="FieldData"/>
										<td class="FieldData"/>
										<td class="FieldData">
											<xsl:value-of select="a:AssignedDate"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:CollectionCreditor/a:AccountNumberAndOrName"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="a:LedgerNumber"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="format-number(a:OriginalAmount, '#,##0.00')"/>
										</td>
										<td class="FieldData">
											<xsl:value-of select="format-number(a:BalanceAmount, '#,##0.00')"/>
										</td>
									</tr>
									<tr>
										<td colspan="13" class="FieldHeader">Narrative Codes:</td>
									</tr>
									<xsl:for-each select="a:Narratives/Narrative">
										<tr>
											<td colspan="13" class="FieldData">
												<xsl:value-of select="@code"/>
 : 
												
												
												
												
												<xsl:value-of select="@description"/>
											</td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
						</td>
					</tbody>
				</table>
				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Trade Check Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable">
								<tr>
									<th colspan="12" class='FieldHeader TableHeader'>
										Installment (fixed number of payments)
									</th>
								</tr>
								<tr>
									<td colspan='12' class='FieldHeader'>
										<i>Member Trades</i>
									</td>
								</tr>
								<tr>
									<td colspan="12">
										<table class="TradesTable">
											<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNTrades/a:CNTrade[a:PortfolioType/@code='I']">
												
											<xsl:variable name="HC30">
												<xsl:choose>
												  <xsl:when test="a:HistoryDerogatoryCounters/a:Count30DayPastDue !=''">
													 <xsl:value-of select="a:HistoryDerogatoryCounters/a:Count30DayPastDue"/>
												  </xsl:when>
												  <xsl:otherwise>
													<xsl:value-of select="'00'"/>
												  </xsl:otherwise>
												</xsl:choose>
											 </xsl:variable>
											 <xsl:variable name="HC60">
												<xsl:choose>
												  <xsl:when test="a:HistoryDerogatoryCounters/a:Count60DayPastDue !=''">
													 <xsl:value-of select="a:HistoryDerogatoryCounters/a:Count60DayPastDue"/>
												  </xsl:when>
												  <xsl:otherwise>
													<xsl:value-of select="'00'"/>
												  </xsl:otherwise>
												</xsl:choose>
											 </xsl:variable>
											 <xsl:variable name="HC90">
												<xsl:choose>
												  <xsl:when test="a:HistoryDerogatoryCounters/a:Count90DayPastDue !=''">
													 <xsl:value-of select="a:HistoryDerogatoryCounters/a:Count90DayPastDue"/>
												  </xsl:when>
												  <xsl:otherwise>
													<xsl:value-of select="'00'"/>
												  </xsl:otherwise>
												</xsl:choose>
											 </xsl:variable>
											
				
												<tr>
													<td style="width:10%" class='TableHeader FieldHeader'>Bus</td>
													<td style="width:10%" class='TableHeader FieldHeader'>ID Code</td>
													<td class='TableHeader FieldHeader'>Rptd</td>
													<td class='TableHeader FieldHeader'>Opnd</td>
													<td class='TableHeader FieldHeader'>HC</td>
													<td class='TableHeader FieldHeader'>Terms</td>
													<td class='TableHeader FieldHeader'>Bal</td>
													<td class='TableHeader FieldHeader'>PDA</td>
													<td class='TableHeader FieldHeader'>Rt</td>
													<td class='TableHeader FieldHeader'>30/60/90</td>
													<td class='TableHeader FieldHeader'>MR</td>
													<td class='TableHeader FieldHeader'>DLA</td>
												</tr>
												<tr>
													<td class='FieldData'>
														<b>
															<xsl:value-of select="a:CreditorId/a:Name" />
														</b>
													</td>
													<td class='FieldData'>
														<xsl:value-of select="a:CreditorId/a:CustomerNumber" />
													</td>
													<td class='FieldData'><xsl:value-of select="a:DateReported"/></td>
													<td class='FieldData'><xsl:value-of select="a:DateOpened"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:HighCreditAmount, '#,##0.00')"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:PaymentTermAmount, '#,##0.00')"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:BalanceAmount, '#,##0.00')"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:PastDueAmount, '#,##0.00')"/></td>
													<td class='FieldData'>
														<xsl:value-of  select="a:PortfolioType/@code"/><xsl:value-of select="a:PaymentRate/@code"/>
														
													</td>
													<td class='FieldData'>														
														<xsl:copy-of select="$HC30" />/<xsl:copy-of select="$HC60" />/<xsl:copy-of select="$HC90" />
													</td>
													<td class='FieldData'><xsl:value-of select="a:MonthsReviewed" /> </td>
													<td class='FieldData'>
														<xsl:value-of select="a:DateLastActivityOrPayment"/>
													</td>
												</tr>
												<tr>
													<td style="width:20%" class='FieldHeader TableHeader'>Prev Hi Rates:</td>
													<td class='FieldData' colspan='11'>
														<xsl:for-each select="a:PreviousHighPaymentRates/a:PreviousHighPaymentRate">
															<xsl:value-of select="@code" />(<xsl:value-of select="a:Date" />),
														</xsl:for-each>														
													</td>
												</tr>
												<tr>
													<td style="width:20%"  class='FieldHeader TableHeader'>Narrative:</td>
													<td colspan='11' class='FieldData'>
														<xsl:for-each select="a:Narratives/a:Narrative">
															<xsl:value-of select="@description" />,
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
										</table>
									</td>
								</tr>
								
							</table>

							<table class="SegmentTable">
								<tr>
									<th colspan="12" class='FieldHeader TableHeader'>
										Revolving or Option (open-end account)
									</th>
								</tr>
								<tr>
									<td colspan='12' class='FieldHeader'>
										<i>Member Trades</i>
									</td>
								</tr>
								<tr>
									<td colspan="12">
										<table class="TradesTable">
											<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNTrades/a:CNTrade[a:PortfolioType/@code='R']">
											<xsl:variable name="HC30">
												<xsl:choose>
												  <xsl:when test="a:HistoryDerogatoryCounters/a:Count30DayPastDue !=''">
													 <xsl:value-of select="a:HistoryDerogatoryCounters/a:Count30DayPastDue"/>
												  </xsl:when>
												  <xsl:otherwise>
													<xsl:value-of select="'00'"/>
												  </xsl:otherwise>
												</xsl:choose>
											 </xsl:variable>
											 <xsl:variable name="HC60">
												<xsl:choose>
												  <xsl:when test="a:HistoryDerogatoryCounters/a:Count60DayPastDue !=''">
													 <xsl:value-of select="a:HistoryDerogatoryCounters/a:Count60DayPastDue"/>
												  </xsl:when>
												  <xsl:otherwise>
													<xsl:value-of select="'00'"/>
												  </xsl:otherwise>
												</xsl:choose>
											 </xsl:variable>
											 <xsl:variable name="HC90">
												<xsl:choose>
												  <xsl:when test="a:HistoryDerogatoryCounters/a:Count90DayPastDue !=''">
													 <xsl:value-of select="a:HistoryDerogatoryCounters/a:Count90DayPastDue"/>
												  </xsl:when>
												  <xsl:otherwise>
													<xsl:value-of select="'00'"/>
												  </xsl:otherwise>
												</xsl:choose>
											 </xsl:variable>
											
				
												<tr>
													<td style="width:10%" class='TableHeader FieldHeader'>Bus</td>
													<td style="width:10%" class='TableHeader FieldHeader'>ID Code</td>
													<td class='TableHeader FieldHeader'>Rptd</td>
													<td class='TableHeader FieldHeader'>Opnd</td>
													<td class='TableHeader FieldHeader'>HC</td>
													<td class='TableHeader FieldHeader'>Terms</td>
													<td class='TableHeader FieldHeader'>Bal</td>
													<td class='TableHeader FieldHeader'>PDA</td>
													<td class='TableHeader FieldHeader'>Rt</td>
													<td class='TableHeader FieldHeader'>30/60/90</td>
													<td class='TableHeader FieldHeader'>MR</td>
													<td class='TableHeader FieldHeader'>DLA</td>
												</tr>
												<tr>
													<td class='FieldData'>
														<b>
															<xsl:value-of select="a:CreditorId/a:Name" />
														</b>
													</td>
													<td class='FieldData'>
														<xsl:value-of select="a:CreditorId/a:CustomerNumber" />
													</td>
													<td class='FieldData'><xsl:value-of select="a:DateReported"/></td>
													<td class='FieldData'><xsl:value-of select="a:DateOpened"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:HighCreditAmount, '#,##0.00')"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:PaymentTermAmount, '#,##0.00')"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:BalanceAmount, '#,##0.00')"/></td>
													<td class='FieldData'><xsl:value-of select="format-number(a:PastDueAmount, '#,##0.00')"/></td>
													<td class='FieldData'>
														<xsl:value-of  select="a:PortfolioType/@code"/><xsl:value-of select="a:PaymentRate/@code"/>
														
													</td>
													<td class='FieldData'>														
														<xsl:copy-of select="$HC30" />/<xsl:copy-of select="$HC60" />/<xsl:copy-of select="$HC90" />
													</td>
													<td class='FieldData'><xsl:value-of select="a:MonthsReviewed" /> </td>
													<td class='FieldData'>
														<xsl:value-of select="a:DateLastActivityOrPayment"/>
													</td>
												</tr>
												<tr>
													<td style="width:20%" class='FieldHeader TableHeader'>Prev Hi Rates:</td>
													<td class='FieldData' colspan='11'>
														<xsl:for-each select="a:PreviousHighPaymentRates/a:PreviousHighPaymentRate">
															<xsl:value-of select="@code" />(<xsl:value-of select="a:Date" />),
														</xsl:for-each>														
													</td>
												</tr>
												<tr>
													<td style="width:20%" class='FieldHeader TableHeader'>Narrative:</td>
													<td colspan='11' class='FieldData'>
														<xsl:for-each select="a:Narratives/a:Narrative">
															<xsl:value-of select="@description" />,
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
										</table>
									</td>
								</tr>
								
							</table>

							

						</td>
					</tbody>
				</table>


				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Inquiry Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable StripedTable">
								<tr>
									<td class='FieldHeader'>Date Of Inquiry</td>
									<td class='FieldHeader'>Member Name</td>
									<td class='FieldHeader'>Area Code</td>
									<td class='FieldHeader'>Telephone Number</td>
									<td class='FieldHeader'>Extension</td>
									<td class='FieldHeader'>Member Number</td>
								</tr>
								<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNLocalInquiries/a:CNLocalInquiry">
									<tr>
										<td class='FieldData'><xsl:value-of select="@date" /></td>
										<td class='FieldData'><xsl:value-of select="a:CustomerId/a:Name" /></td>
										<td class='FieldData'><xsl:value-of select="a:CustomerId/a:Telephone/a:ParsedTelephone/a:AreaCode" /></td>
										<td class='FieldData'><xsl:value-of select="a:CustomerId/a:Telephone/a:ParsedTelephone/a:Number" /></td>
										<td class='FieldData'/>
										<td class='FieldData'><xsl:value-of select="a:CustomerId/a:CustomerNumber" /></td>
									</tr>
								</xsl:for-each>
							</table>
						</td>
					</tbody>
				</table>


				<table class="MainTable">
					<thead>
						<th class="SegmentHeader">Legals Segment(s)</th>
					</thead>
					<tbody>
						<td>
							<table class="SegmentTable StripedTable">
								<tr>

									<td class='FieldHeader'>CustomerNumber</td>
									<td class='FieldHeader'>Court Name</td>
									<td class='FieldHeader'>Case Number</td>
									<td class='FieldHeader'>Status</td>
									<td class='FieldHeader'>Amount</td>
									<td class='FieldHeader'>Defendant</td>
									<td class='FieldHeader'>Plaintiff</td>
									<td class='FieldHeader'>DateFiled</td>
									<td class='FieldHeader'>DateSatisfied</td>
									
				
								</tr>
								<xsl:for-each select="a:EfxTransmit/a:EfxReport/a:CNConsumerCreditReports/a:CNConsumerCreditReport/a:CNLegalItems/a:CNLegalItem">
									<tr>
										
										<td class='FieldData'><xsl:value-of select="a:CourtId/a:CustomerNumber" /></td>
										<td class='FieldData'><xsl:value-of select="a:CourtId/a:Name" /></td>
										<td class='FieldData'><xsl:value-of select="a:CaseNumber" /></td>
										<td class='FieldData'><xsl:value-of select="a:Status/@code" /></td>
										<td class='FieldData'><xsl:value-of select="format-number(a:Amount, '#,##0.00')" /></td>										
										<td class='FieldData'><xsl:value-of select="a:Defendant" /></td>
										<td class='FieldData'><xsl:value-of select="a:Plaintiff" /></td>
										<td class='FieldData'><xsl:value-of select="a:DateFiled" /></td>
										<td class='FieldData'><xsl:value-of select="a:DateSatisfied" /></td>



									</tr>
								</xsl:for-each>
							</table>
						</td>
					</tbody>
				</table>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="GUAN-STEVEN-Equifax.xml" userelativepaths="yes" externalpreview="no" url="GUAN-STEVEN-Equifax.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="schemaCache" value="||"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bGenerateByteCode" value="true"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="sInitialMode" value=""/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="GUAN-STEVEN-Equifax.xml" destSchemaRoot="EfxTransmit" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no">
			<SourceSchema srcSchemaPath="GUAN-STEVEN-Equifax.xml" srcSchemaRoot="EfxTransmit" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/>
		</MapperInfo>
		<MapperBlockPosition>
			<template match="/">
				<block path="html/body/table/tbody/td/table/tbody/tr[8]/td[2]/xsl:value-of" x="155" y="47"/>
				<block path="html/body/table/tbody/td/table/tbody/xsl:for-each" x="155" y="87"/>
				<block path="html/body/table/tbody/td/table/tbody/xsl:for-each/tr/th/xsl:value-of[1]" x="115" y="47"/>
				<block path="html/body/table[1]/tbody/td/xsl:for-each" x="315" y="87"/>
				<block path="html/body/table[1]/tbody/td/xsl:for-each/table/tbody/xsl:for-each" x="115" y="87"/>
				<block path="html/body/table[1]/tbody/td/xsl:for-each/table/tbody/xsl:for-each[1]" x="75" y="87"/>
				<block path="html/body/table[1]/tbody/td/xsl:for-each/table/tbody/xsl:for-each[1]/tr/td/xsl:value-of" x="75" y="47"/>
				<block path="html/body/table[2]/tbody/td/table/tbody/xsl:for-each" x="35" y="87"/>
				<block path="html/body/table[3]/tbody/td/table/tbody/xsl:for-each" x="315" y="47"/>
				<block path="html/body/table[3]/tbody/td/table/tbody/xsl:for-each/tr/td/xsl:value-of" x="35" y="47"/>
				<block path="html/body/table[3]/tbody/td/table/tbody/xsl:for-each/tr/td[1]/xsl:value-of" x="315" y="127"/>
				<block path="html/body/table[3]/tbody/td/table/tbody/xsl:for-each/tr/td[2]/xsl:value-of" x="355" y="127"/>
				<block path="html/body/table[3]/tbody/td/table/tbody/xsl:for-each/tr/td[3]/xsl:value-of" x="275" y="127"/>
				<block path="html/body/table[3]/tbody/td/table/tbody/xsl:for-each/tr/td[4]/xsl:value-of" x="235" y="127"/>
				<block path="html/body/table[4]/tbody/td/table/xsl:for-each" x="355" y="87"/>
				<block path="html/body/table[5]/tbody/td/table/xsl:for-each" x="275" y="87"/>
				<block path="html/body/table[5]/tbody/td/table/xsl:for-each/tr/td[11]/xsl:value-of" x="355" y="47"/>
				<block path="html/body/table[5]/tbody/td/table/xsl:for-each/tr/td[12]/xsl:value-of" x="275" y="47"/>
				<block path="html/body/table[5]/tbody/td/table/xsl:for-each/xsl:for-each" x="235" y="87"/>
				<block path="html/body/table[5]/tbody/td/table/xsl:for-each/xsl:for-each/tr/td/xsl:value-of" x="235" y="47"/>
				<block path="html/body/table[5]/tbody/td/table/xsl:for-each/xsl:for-each/tr/td/xsl:value-of[1]" x="195" y="47"/>
			</template>
		</MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->