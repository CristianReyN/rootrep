using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CareerSiteComponents;

namespace BOA
{
    public partial class HotJobs_HotJobsList : System.Web.UI.Page
    {
        #region Members

        private string hotJobsPageName = string.Empty;
        private int familyId = 0;
        private int talentId = 0;

        #endregion

        #region Enumerators

        private enum Modes
        {
            JobFamily = 0,
            TalentArea = 1
        }

        #endregion

        #region Event Handlers

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                hotJobsPageName = this.Request.QueryString["HotJobsPageName"].ToString();
            }
            catch
            {
                hotJobsPageName = string.Empty;
            }

            try
            {
                familyId = System.Convert.ToInt32(this.Request.QueryString["FamilyId"].ToString());
            }
            catch
            {
                familyId = 0;
            }

            try
            {
                talentId = System.Convert.ToInt32(this.Request.QueryString["TalentId"].ToString());
            }
            catch
            {
                talentId = 0;
            }

            Modes mode = (familyId > 0 ? Modes.JobFamily : Modes.TalentArea);

            this.PopulateHotJobs(mode);
        }

        #endregion

        #region Helper Methods

        private void PopulateHotJobs(Modes mode)
        {
            int questionId = 0;
            string answerId = string.Empty;

            CareerSiteSettings cs = Utility.GetCareerSiteSettings();

            // Set Masked Hiring Org values for the form menu controls
            // (without the DataBind the data will not be fetched)
            hjcfRepeater1.MaskedHiringOrgId = cs.MaskedHiringOrgId;
            hjcfRepeater1.EMediaId = cs.EMediaId;
            hjcfRepeater1.CategoryIds = "-1";
            hjcfRepeater1.CityIds = "-1";
            hjcfRepeater1.StateIds = "-1";
            hjcfRepeater1.Keywords = string.Empty;
            hjcfRepeater1.PageIndex = 1;
            hjcfRepeater1.RecordsPerPage = cs.HotJobsCount;

            if (mode == Modes.JobFamily)
            {
                questionId = cs.RetrieveTagValueQuestionId("JobFamily");
            }
            else
            {
                questionId = cs.RetrieveTagValueQuestionId("TalentArea");

            }

            answerId = cs.RetrieveAnswerIdsByQuestionIdPageId(questionId.ToString(), hotJobsPageName);
            hjcfRepeater1.QuestionIdList = questionId.ToString();
            hjcfRepeater1.QuestionId1 = questionId;
            hjcfRepeater1.QuestionId1AnswerIds = answerId;

            this.hjcfRepeater1.GetRecords();
        }

        #endregion
    }
}